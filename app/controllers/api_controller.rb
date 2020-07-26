class ApiController <ApplicationController
    skip_before_action :verify_authenticity_token
    def nouveauvoisin
        voisin = Voisin.new(
            name: params[:name],
            number: params[:number],
            address: params[:address],
            aboutme: params[:aboutme],
            favori: params[:favori]
        )
        if voisin.save
            render status:200, json: {message: 'SUCCESS'}
        else
            render status:200, json: {message: 'FAILED'} 
        end
    end

    def voisins
        voisin = Voisin.all
        render status:200, json: voisin
    end

    def voisinsfavoris
        voisin = Voisin.where(favori: '1').all
        render status:200, json: voisin
    end

    def consulterdetailsvoisins
        voisin = Voisin.find(params[:id])
        render status:200, json: voisin
    end

end