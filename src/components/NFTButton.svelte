<script>
	let marketplace = 'https://web3-login.net/nft-market';
	const open = () => {
		window.open(marketplace, '_blank');
	};
</script>

<button class="btn" on:click|preventDefault={() => open()}><slot /></button>
