from robot.api import ExecutionResult, SuiteVisitor


class PrintTestInfo(SuiteVisitor):

    def visit_test(self, test):
        print('{} | {} | {} | {}'.format(test.name, test.starttime,
                                         test.elapsedtime, test.status))


result = ExecutionResult('output.xml')
result.suite.visit(PrintTestInfo())


from robot.api import ExecutionResult
def parse_robot_result(xml_path):
    suite = ExecutionResult(xml_path).suite

    for test in suite.tests:
        print(test.name)
        print(test.status)

    allTests = suite.statistics
    print('total:')
    print(allTests.total)
    print('passed:')
    print(allTests.passed)
    print('failed:')
    print(allTests.failed)

if __name__ == '__main__':
    path = 'output.xml'
    r = parse_robot_result(path)
