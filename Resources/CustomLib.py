import random
import string
import os
__version__ = '1.0.0'


class CustomLib(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def add_number(self, cs_num):
        return cs_num + 1

    def get_random_string_cstm(self, length):
        # choose from all lowercase letter
        letters = string.ascii_lowercase
        result_str = ''.join(random.choice(letters) for i in range(length))
        return result_str

    def get_random_name(self, email_length):
        letters = string.ascii_lowercase[:12]
        return ''.join(random.choice(letters) for i in range(email_length))

    def generate_random_emails(self, length):

        domains = ["hotmail.com", "gmail.com", "aol.com",
                   "mail.com", "mail.kz", "yahoo.com"]

        return ''.join([self.get_random_name(length),'@', random.choice(domains)])

    # def read_from_file(self):
    #     with open('C://Users//mukul.agarwal//PycharmProjects//TestingRobot//Resources//readme.txt', 'r') as f:
    #         lines = f.readlines()
    #         return lines

    def read_from_file(self):
        print(os.getcwd())
        with open('Resources//readme.txt', 'r') as f:
            lines = f.readlines()
            return lines
