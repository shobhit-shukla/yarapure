json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_mode, :customer_id, :employee_id, :bank, :cheque_date, :total_dues, :remark, :cheque_no, :amount
  json.url payment_url(payment, format: :json)
end
