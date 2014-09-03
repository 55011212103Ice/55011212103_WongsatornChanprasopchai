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
    func countUser(){
        var total = userAndPass.count
        println("User & Pass = \(total)")
    }
    
    func showAllUser(){
        for (showUser,showPass) in userAndPass {
            println("user: \(showUser) & pass: \(showPass)")
     
        }
        
    }
    
}
var dataStudent = usernamePassword(user:"ice", pass:"456")
dataStudent.addUsername("aaa",pass:"111")
dataStudent.addUsername("bbb",pass:"222")
dataStudent.addUsername("c",pass:"21")
dataStudent.addUsername("ewfwe",pass:"2134")
dataStudent.addUsername("ergerg",pass:"22qwwf2")
dataStudent.addUsername("23rsdf",pass:"56dfvw")

dataStudent.countUser()
dataStudent.showAllUser()
