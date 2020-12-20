function fn() {
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);

    if (!env) {
        env = 'dev'; // a custom 'intelligent' default
    }

    var config = { // base config JSON
        appId: 'my.app.id',
        appSecret: 'my.secret',
        api: {
            url: 'https://jsonplaceholder.typicode.com',
        },
        paths: {
            posts: '/posts',
            users: '/users'
        }
    };

    if (env === 'dev') {
        // over-ride only those that need to be
        config.api.url = 'https://jsonplaceholder.typicode.com';
    } else if (env === 'e2e') {
        config.api.url = 'https://jsonplaceholder.typicode.com';
    }

    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);

    return config;
}