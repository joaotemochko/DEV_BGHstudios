class Contact < MailForm::Base
    attribute :name, :validate => true
    attribute :email, :validate => /\A([\w\.%\+\+]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :tel, :validate => true
    attribute :message, :validate => true
    attribute :nickname, :captcha => true
    
    def headers
    {
        :subject => "Novo Cliente",
        :to => "comercial@bghstudios.com.br",
        :from => %("#{name}" <#{email}>)
    }
    end

end
