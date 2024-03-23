def parse_invoices(invoice_data)


    pattern = /(\d{4}-\d{2}-\d{2}) - (\w+) - ([^$]+) - \$([0-9,]+)/

    invoice_data.each_line do |x|    
        match = x.match(pattern)
        
        f_date = match[1]
        invoice_num = match[2]
        name = match[3].strip
        amount = match[4]
        
        puts "Date: #{f_date}, Invoice Number: #{invoice_num}, Client: #{name}, Amount: $#{amount}"
    
    end

end
  
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES
  
parse_invoices(invoice_entries)
  