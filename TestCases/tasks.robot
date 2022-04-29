*** Settings ***


Resource     ../Keywords/keywords.robot


Documentation
...     My First Test
...     This test will try to Signin with Wrong email
...     There is a small test for addition function


*** Test Cases ***


Open Store & Verify Store
    Navigate to Store
    Verify Page Contains Store
    Signin With Dummy Email
    Close Browser

Check Addition
    Add Num

Check Bestseller
    Navigate to Store
    Verify Page Contains Store
    Bestseller
    Close Browser

Verify Contact Us
    Navigate to Store
    Verify Page Contains Store
    ContactUS
    Close Browser

