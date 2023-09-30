const { AfipServices } = require('../AfipServices.ts');

class factura {
    constructor() {
        // Crea una instancia de AfipServices pasando la configuración necesaria
        this.afipServices = new AfipServices(config); // Asegúrate de proporcionar la configuración adecuada
    }

    async miFuncion(req, res) {
        try {
            // Supongamos que tienes un objeto `params` que quieres pasar a `createBill`
            const params = {
                // ...define tus parámetros aquí...
            };

            // Llama a la función createBill de AfipServices
            const result = await this.afipServices.createBill(params);

            // Haz algo con el resultado, como enviarlo como respuesta
            res.json(result);
        } catch (error) {
            // Maneja los errores si ocurren
            console.error(error);
            res.status(500).json({ error: 'Ocurrió un error' });
        }
    }
}

module.exports = factura;
