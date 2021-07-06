import os

print("test_value" == os.environ.get('TEST'))
print("test" == os.environ.get('TEST'))

print(os.environ.get('TEST2'))
print("test_value_2" == os.environ.get('TEST2'))
