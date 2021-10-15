module SiteHelper
  def msg_jumbotron
    case params[:action]
    when 'index'
      "Últimas perguntas cadastradas..."
    when 'subject'
      "Mostrando questões para o assunto \"#{params[:subject]}\"..."
    when 'questions'
      "Resultados para o termo: \"#{params[:term]}\"..."
    end
  end
end
