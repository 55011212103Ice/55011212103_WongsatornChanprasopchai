class usernamePassword{
    
    let user: String
    let pass: String
    
    var userAndPass: Dictionary<String, String>
    
    init(user:String, pass:String){
        self.user = user
        self.pass = pass
        
        userAndPass = [user:pass]
    }
    
    func addUsername(user:String, pass:String){
        
        userAndPass[user] = pass
    }
    
}
var dataStudent = usernamePassword(user:"ice", pass:"456")
dataStudent.addUsername("aaa",pass:"111")
dataStudent.addUsername("bbb",pass:"222")
dataStudent.userAndPass

