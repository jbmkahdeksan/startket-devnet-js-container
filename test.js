const { Devnet } = require('starknet-devnet');

async function main() {
    // Specify anything from https://github.com/0xSpaceShard/starknet-devnet-rs/releases
    // Be sure to include the 'v' if it's in the version name.
    const devnet = await Devnet.spawnVersion("latest");
    console.log(await devnet.provider.isAlive()); // true
}

main()