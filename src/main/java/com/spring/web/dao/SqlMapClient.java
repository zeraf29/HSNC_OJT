package com.spring.web.dao;

import java.io.IOException;
import java.io.Reader;
 
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
 
public class SqlMapClient {
    private SqlSession session;
     
    public SqlMapClient(){
    	try {
            String resource = "myBatisConfig.xml";
            Reader reader = Resources.getResourceAsReader(resource);
            SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);
             
            this.session = sqlMapper.openSession();
             
        } catch (IOException e) {
            e.printStackTrace();
        }
         
    }
     
    public SqlSession getSqlSession() {
        return this.session;
    }
}