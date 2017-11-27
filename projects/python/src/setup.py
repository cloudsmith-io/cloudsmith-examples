"""Cloudsmith Command Line Interface (CLI)."""
from __future__ import absolute_import, print_function

from setuptools import find_packages, setup


setup(
    name='csm-python-example',
    version='1.0',
    url='https://cloudsmith.io',
    license='Apache License 2.0',
    author='Cloudsmith Ltd',
    author_email='support@cloudsmith.io',
    description='Cloudsmith: Be Awesome. Automate Everything.',
    packages=find_packages(exclude=['tests']),
    include_package_data=True,
    zip_safe=False,
    platforms=['any'],
    install_requires=[],
    entry_points={
        'console_scripts': [
            'csm-python-example=csm_python_example:beawesome',
        ],
    },
    keywords=['cloudsmith', 'python', 'example'],
    classifiers=[
        'Development Status :: 5 - Production/Stable',
        'Environment :: Console',
        'Intended Audience :: Developers',
        'Intended Audience :: System Administrators',
        'License :: OSI Approved :: Apache Software License',
        'Operating System :: POSIX :: Linux',
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 3',
        'Topic :: Utilities',
    ]
)
