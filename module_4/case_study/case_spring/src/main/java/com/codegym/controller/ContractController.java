package com.codegym.controller;


import com.codegym.model.contract.AttachFacility;
import com.codegym.model.contract.Contract;
import com.codegym.model.contract.ContractDetail;
import com.codegym.model.customer.Customer;
import com.codegym.model.dto.ContractDto;
import com.codegym.model.dto.IContractDto;
import com.codegym.model.employee.Employee;
import com.codegym.model.facility.Facility;
import com.codegym.service.contract.IAttachFacilityService;
import com.codegym.service.contract.IContractDetailService;
import com.codegym.service.contract.IContractService;
import com.codegym.service.customer.ICustomerService;
import com.codegym.service.emoloyee.IEmployeeService;
import com.codegym.service.facility.IFacilityService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/contract")
public class ContractController {

    @Autowired
    private IContractService contractService;
    @Autowired
    private IContractDetailService contractDetailService;
    @Autowired
    private IAttachFacilityService attachFacilityService;
    @Autowired
    private IFacilityService facilityService;
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IEmployeeService employeeService;

    @GetMapping("/list")
    public String showList(Model model) {
        List<IContractDto> contractDtoList = contractService.listContract();
        model.addAttribute("contractDtoList", contractDtoList);
        List<Customer> customerList = customerService.findAll2();
        model.addAttribute("customerList", customerList);
        List<Facility> facilityList = facilityService.findAll();
        model.addAttribute("facilityList", facilityList);
        List<ContractDetail> contractDetailList = contractDetailService.listContractDetail();
        model.addAttribute("contractDetailList", contractDetailList);
        List<AttachFacility> attachFacilityList = attachFacilityService.listAtFac();
        model.addAttribute("attachFacilityList", attachFacilityList);
        List<Employee> employeeList = employeeService.findAll();
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("contractDto", new ContractDto());
        model.addAttribute("contractDetail", new ContractDetail());
        return "/views/contract/list";
    }


    @PostMapping("/create")
    public String create(@Validated @ModelAttribute("contractDto") ContractDto contractDto, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            List<IContractDto> contractDtoList = contractService.listContract();
            model.addAttribute("contractDtoList", contractDtoList);
            List<Customer> customerList = customerService.findAll2();
            model.addAttribute("customerList", customerList);
            List<Facility> facilityList = facilityService.findAll();
            model.addAttribute("facilityList", facilityList);
            List<ContractDetail> contractDetailList = contractDetailService.listContractDetail();
            model.addAttribute("contractDetailList", contractDetailList);
            List<AttachFacility> attachFacilityList = attachFacilityService.listAtFac();
            model.addAttribute("attachFacilityList", attachFacilityList);
            List<Employee> employeeList = employeeService.findAll();
            model.addAttribute("employeeList", employeeList);
            model.addAttribute("contractDetail", new ContractDetail());
            model.addAttribute("flag", true);
            return "/views/contract/list";
        }

        Contract contract = new Contract();
        BeanUtils.copyProperties(contractDto, contract);
        contractService.save(contract);
        return "redirect:/contract/list";
    }

    @PostMapping("/createContractDetail")
    public String create(@ModelAttribute("contractDetail") ContractDetail contractDetail) {
        contractDetailService.save(contractDetail);
        return "redirect:/contract/list";
    }

}
