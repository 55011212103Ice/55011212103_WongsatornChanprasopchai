class TipCalculator{
    
    //2
    let total: Double
    let taxPct: Double
    let subTotal: Double
    
    //3
    init(total:Double, taxPct:Double){
        self.total = total //self ใช้ในกรณีที่ชื่อซ้ำกัน
        self.taxPct = taxPct
        subTotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) -> Double{ // -> คือการ return ค่า (บอกชนิดของตัวแปรที่ return)
        return subTotal * tipPct
    }
    
    //1
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var numberOfItems = possibleTipsInferred.count
        
        //2
        var retval = [Int:Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

//6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()

