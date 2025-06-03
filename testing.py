class invoice:
    def __init__(self, id_number, total):
        self.id_number = id_number
        self.total = total
        self.owed = total
    @enhanced_printlog_for_method
    def record_payment(self, amount):
        self.owed = amount

inv=invoice(42,1177.55)
print(f"id or inv:{id(inv)}")
inv.record_payment(55.35)
