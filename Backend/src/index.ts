import mojo, {yamlConfigPlugin} from '@mojojs/core';
import jwt, { JwtPayload } from 'jsonwebtoken';

export const app = mojo();

app.plugin(yamlConfigPlugin);
app.secrets = app.config.secrets;

//app.get('/').to('example#welcome');
app.get('/', async ctx => {
    await ctx.render({text: 'Hello World, Krishna!'});
});


app.get('/backend/signin', async ctx => {
    const { sign } = jwt;
    const token = sign({'firstname': 'Krishna', 'lastname': 'K', 'friend': 'Megan'}, "secret", {expiresIn: 300});
    //console.log(token);
    await ctx.render({json: token});
    /*
    const data = {
        'firstname': 'Krishna',
        'lastname': 'K',
    }
    //console.log(data)
    await ctx.render({json: data});
    */
});

app.get('/backend/signin2', async ctx => {
    console.log("This is within /backend/signin2");
    const { verify } = jwt;
    const cookie:string = ctx.req.getCookie('token') as string;
    console.log(cookie);
    try {
        let verifycode = verify(cookie, "secret") as JwtPayload;
        //let verifycode = verify(cookie, "nosecret");
        console.log(verifycode);
        console.log(typeof(verifycode));
        console.log(verifycode['firstname']);;
        console.log(verifycode.firstname);
        //console.log(typeof(verifycode as JwtPayload));
        //console.log(verifycode.firstname);
        //let jsonCode = JSON.parse(verifycode as object);
        //console.log(jsonCode);
        //console.log(jsonCode.firstname);
    }
    catch(e) {
        console.log("entering catch block");
        console.log(e);
        console.log("leaving catch block");
    }
    await ctx.render({json: cookie});
});


app.get('/backend/signin3', async ctx => {
    const session = await ctx.session();
    session.firstname = 'Krishna';
    session.friend = 'Megan';
    ctx.render( {json : 1} );
});

app.get('/test', async ctx => {
    //ctx.render( {json : 1} );
    //await ctx.render({text: 'Hello World, Krishna!'});
    await ctx.render({view: 'home'});
});
app.start();