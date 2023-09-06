#!/usr/bin/env python3
""" Copy file from SRC to DEST """
import os
import paramiko
from scp import SCPClient

def copy_files_to_remote(SOURCE, DESTINATION):
    """ copy function"""
    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.load_system_host_keys()
    ssh.connect('samba', username='przemek')
    scp = SCPClient(ssh.get_transport())
    scp.put(SOURCE, recursive=True, remote_path=DESTINATION)
    scp.close()
    print("Copied")

SRC = os.path.dirname(os.path.realpath(__file__))  #path of python script
DEST = '/tooling'
copy_files_to_remote(SRC, DEST)
