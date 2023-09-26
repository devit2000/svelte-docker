<script>
  import Button from "$lib/components/ui/button/button.svelte";
  let value = 0;
</script>

<Button
  variant="outline"
  on:click={() => {
    value += 1;
  }}>Click me</Button
>
<p>{value}</p>
