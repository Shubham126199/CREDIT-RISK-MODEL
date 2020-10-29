# -*- coding: utf-8 -*-
from scrapy import Spider
from scrapy.http import Request

def product_info(response, value):
    return response.xpath('//td[text()="' + value + '"]/following-sibling::td/text()').extract_first()

def product_info2(response, value):
    return response.xpath('//td[text()="' + value + '"]/following-sibling::td/a/@href').extract_first()



class CaliforniaSpider(Spider):
    name = 'california'
    allowed_domains = ['sos.ca.gov']
    start_urls = ['http://sos.ca.gov/']

 
    def parse(self, response):
        tata = response.xpath('//*[contains(@href, "/business-programs/")]/@href').extract_first()     
        yield Request(response.urljoin(tata), callback=self.parse_subject)
   
    def parse_subject(self, response):
    	tata2 = response.xpath('//*[contains(@href, "/business-programs/private-service-companies")]/@href').extract_first()  
    	yield Request(response.urljoin(tata2), callback=self.parse_subject2)

    def parse_subject2(self, response):
         #address = response.xpath('//td[text()="Address:"]/following-sibling::td/text()').extract()
         #Contact_Name = response.xpath('//td[text()="Contact name:"]/following-sibling::td/text()').extract()
         #Phone_Number =  response.xpath('//td[text()="Phone number:"]/following-sibling::td/text()').extract()
         #Fax_Number = response.xpath('//td[text()="Fax number:"]/following-sibling::td/text()').extract()
         #Email_Address = response.xpath('//td[text()="Email address:"]/following-sibling::td/text()').extract()
         #Web_Address = response.xpath('//td[text()="Web address:"]/following-sibling::td/a/@href').extract()
         #Services_Provided1 = response.xpath('//td[text()="Services provided:"]/following-sibling::td/text()').extract()
         #Service_Provided2 = response.xpath('//tr[td="Services provided:"]/following-sibling::tr/td/text()').extract()[0:4]
         #Service_Provided = Services_Provided1 + Service_Provided2 

         address = product_info(response, 'address')
         Contact_Name =  product_info(response, 'Contact_Name')
         Phone_Number  = product_info(response, 'Phone_Number')
         Fax_Number = product_info(response, 'Fax_Number')
         Email_Address = product_info(response, 'Email_Address')
         Services_Provided1 = product_info(response, 'Services_Provided1')
         Web_Address = product_info2(response, 'web_address')

         yield {'address': address, 'Contact_Name': Contact_Name, 'Phone_Number': Phone_Number, 'Fax_Number': Fax_Number, 'Email_Address': Email_Address, 'Web_Address': Web_Address, 'Services_Provided1': Services_Provided1} #'Service_Provided': Service_Provided}


    	


       	


