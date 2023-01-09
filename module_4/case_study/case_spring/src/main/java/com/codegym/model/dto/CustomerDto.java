package com.codegym.model.dto;

import com.codegym.model.customer.Customer;
import com.codegym.model.customer.CustomerType;
import com.codegym.model.employee.Employee;
import com.codegym.model.facility.Facility;
import net.bytebuddy.implementation.bind.annotation.Empty;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import javax.persistence.Column;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class CustomerDto implements Validator {

    private int id;
    @NotEmpty(message = "Không được để trống")
    @Pattern(regexp = "^([A-Z]*[a-z]*[ ])*([A-Z]*[a-z]*)$", message = "Tên không được chứa số và viết hoa chữ đầu")
    private String name;
    @NotBlank(message = "Không được để trống")
    @Pattern(regexp = "^(((0[1-9]|[12]\\d|3[01])\\/(0[13578]|1[02])\\/((19|[2-9]\\d)\\d{2}))|((0[1-9]|[12]\\d|30)\\/(0[13456789]|1[012])\\/((19|[2-9]\\d)\\d{2}))|((0[1-9]|1\\d|2[0-8])\\/02\\/((19|[2-9]\\d)\\d{2}))|(29\\/02\\/((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$", message = "Nhập đúng định dạng yyyy/mm/dd")
    private String dateOfBirth;
    private boolean gender;
    @NotEmpty(message = "Không được để trống")
    @Pattern(regexp = "^(\\d{9})$", message = "Căn cước gồm 9 số và không chứa kí tự")
    private String idCard;
    @NotEmpty(message = "Không được để trống")
    @Pattern(regexp = "^(0[\\d]\\d{8})", message = "Số điện thoại gồm 10 số và không chứa kí tự")
    private String phoneNumber;
    @NotEmpty(message = "Không được để trống")
    private String address;
    @NotEmpty(message = "Email không được trống")
    @Pattern(regexp = "\\w+@\\w+.\\w+", message = "Email phải theo quy tắc xxx@xxx.xxx")
    private String email;
    private CustomerType customerType;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return false;
    }

    @Override
    public void validate(Object target, Errors errors) {

    }
}
