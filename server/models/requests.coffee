americano = require 'americano-cozy'

byApps = -> emit [doc.app, doc.ref], doc if doc.type is 'persistent'
allSlug = -> emit doc.slug, doc

module.exports =

    user:
        all: americano.defaultRequests.all
    alarm:
        all: americano.defaultRequests.all
    cozyinstance:
        all: americano.defaultRequests.all
    notification:
        all: americano.defaultRequests.all
        byApps: byApps
    application:
        all: allSlug
