import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    print test.title()
test_cases.close()