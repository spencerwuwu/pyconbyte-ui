#!/usr/bin/env python3.7

import sys
import os
import time

def get_result_sets(path, module, in_ret_sets, is_formal):
    sys.path.append(path)
    t_module = __import__(module)
    func = getattr(t_module, module)
    result = True

    for sets in in_ret_sets:
        ret = func(*sets["input"])
        if ret != sets["result"]:
            print("Input: %s" % sets["input"])
            if is_formal:
                print("Official output: %s" % ret)
                print("Yours: %s" % sets["result"])
            else:
                print("Official output: %s" % sets["result"])
                print("Yours: %s" % ret)
            result = False
            break
    sys.path.remove(path)
    return result


def main(target, pid):
    # Analysis user's program
    inputs_space = {}
    exec(sys.stdin.read(), inputs_space)
    realpath = os.path.dirname(os.path.realpath(__file__))
    os.chdir(realpath)

    target_name = "runtime/" + pid + "/" + target
    filename = os.path.abspath(target_name)
    path = "runtime/"+ pid + "/" 
    module = target.replace(".py", "")



    print("Analyzing your program...")
    print()
    # Try running the program with official sets first
    formal_sets = {}
    exec(open("inputs/" + target).read(), formal_sets)
    f_sets = formal_sets["INI_SETS"]
    ret = get_result_sets(path, module, f_sets, False)
    if not ret:
        return


    # Run with py-conbyte to generate more testcases 
    queries_path = os.environ["HOME"] + "/stored_queries/" + module + "." + time.strftime("%Y.%m.%d.%H.%M.%S", time.localtime())
    os.system("mkdir -p " + queries_path)
    engine = ExplorationEngine(path, filename, module, None, inputs_space["INI_ARGS"], queries_path, "cvc4")
    engine.explore(50, 1)

    # Store the input-result sets of user's program
    in_ret_sets = engine.in_ret_sets
    print("Finish analyzing. Comparing the results...")
    print()

    # Get the official program and input sets
    f_path = "answers/"
    f_module = module + "_f"
    ret = get_result_sets(f_path, f_module, in_ret_sets, True)

    if not ret:
        return

    print("All Pass!")
    stored_path = os.environ["HOME"] + "/stored_py/" + module + "." + time.strftime("%Y.%m.%d.%H.%M.%S", time.localtime())
    os.system("mkdir -p " + stored_path)
    os.system("cp " + target_name + " " + stored_path)


if __name__ == '__main__':
    sys.path.append(os.environ["HOME"] + "/py-conbyte/")
    from conbyte.explore import *
    main(sys.argv[1], sys.argv[2])
