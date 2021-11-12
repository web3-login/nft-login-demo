<script>
	let chain = "process.env.CHAIN";
	let marketplace = 'https://nft-login.github.io/nft-login-marketplace/' + chain;
	const open = () => {
		window.open(marketplace, '_blank');
	};
</script>

<button class="btn" on:click|preventDefault={() => open()}><slot /></button>
