package repository.customer.impl;

import model.customer.CustomerType;
import repository.customer.BaseRepository;
import repository.customer.ICustomerTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
private final String SELECT_ALL_CT="select * from customer_type;";

    @Override
    public List<CustomerType> listCustomerType() {
        List<CustomerType> customerTypeList= new ArrayList<>();
        Connection connection= BaseRepository.getConnectDB();
        try {
            PreparedStatement ps=connection.prepareStatement(SELECT_ALL_CT);
            ResultSet resultSet=ps.executeQuery();
            while (resultSet.next()){
                int id= resultSet.getInt("id");
                String name=resultSet.getString("name");
                CustomerType customerType= new CustomerType(id,name);
                customerTypeList.add(customerType);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerTypeList;
    }
}
