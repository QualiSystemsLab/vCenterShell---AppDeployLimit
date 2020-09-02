from cloudshell.api.cloudshell_api import CloudShellAPISession


def get_cp_restricted_attrs_dict(input_str):
    """
    sample input: 'poolA,3;pool2,'
    :param str input_str:
    :return dict:
    """
    result = {}
    semicolon_split = input_str.split(";")
    for item in semicolon_split:
        comma_split = item.split(",")
        key = comma_split[0].strip()
        value = comma_split[1].strip()
        result[key] = value
    return result
