class NotifierMailer < ApplicationMailer
    default to: "comercial@bghstudios.com.br"
        
    def simple_message(name, email, tel, message)
        mail(
            "reply-to": "lostushinatta@bghstudios.com.br",
            subject: "Teste",
            body: "Nome: " + name + "\nEmail: " + email + "\nTelefone: " + tel + "\nMensagem:" + message
        )
    end
end
