kernel void KERNEL(global float* input, global float* output, int N) {

  int gid = get_global_id(0);

  for (int i = gid; i < N; i += get_global_size(0)) {
    output[i] = input[i] + 1;
  }
}
