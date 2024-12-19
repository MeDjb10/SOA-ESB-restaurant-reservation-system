package com.example.tableavailabilityservice.Config;

import jakarta.xml.soap.MessageFactory;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.ws.config.annotation.EnableWs;
import org.springframework.ws.soap.saaj.SaajSoapMessageFactory;
import org.springframework.ws.transport.http.MessageDispatcherServlet;
import org.springframework.ws.wsdl.wsdl11.DefaultWsdl11Definition;
import org.springframework.xml.xsd.SimpleXsdSchema;
import org.springframework.xml.xsd.XsdSchema;

@EnableWs
@Configuration
public class WebServiceConfig {



    @SuppressWarnings({ "rawtypes", "unchecked" })
    @Bean
    public ServletRegistrationBean messageDispatcherServlet(ApplicationContext applicationContext) {
        MessageDispatcherServlet servlet = new MessageDispatcherServlet();
        servlet.setApplicationContext(applicationContext);
        servlet.setTransformWsdlLocations(true);
        return new ServletRegistrationBean(servlet, "/allService/*");
    }

    @Bean(name = "tableavailability")
    public DefaultWsdl11Definition defaultWsdl11Definition(XsdSchema tableAvailabilitySchema) {
        DefaultWsdl11Definition wsdl11Definition = new DefaultWsdl11Definition();
        wsdl11Definition.setPortTypeName("TableAvailabilityPort");
        wsdl11Definition.setLocationUri("/allService/ws");
        wsdl11Definition.setTargetNamespace("com.springbootsoap.allapis");
        wsdl11Definition.setSchema(tableAvailabilitySchema);
        return wsdl11Definition;
    }

    @Bean
    public XsdSchema tableAvailabilitySchema() {
        return new SimpleXsdSchema(new ClassPathResource("tableAvailability.xsd"));
    }
}
