define noundef range(i32 1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.5.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.5.0.extract.trunc = trunc nuw i64 %arr.sroa.5.0.extract.shift to i32
  %_5.0.i.i.1 = add i32 %arr.sroa.5.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  %_4 = sitofp i32 %_5.0.i.i.1 to float
  %half_sum = fmul float %_4, 5.000000e-01
  %spec.select = tail call i32 @llvm.smax.i32(i32 %arr.sroa.0.0.extract.trunc, i32 %arr.sroa.5.0.extract.trunc)
  %_18 = sitofp i32 %spec.select to float
  %_20 = fcmp olt float %half_sum, %_18
  %.lcssa = select i1 %_20, i32 1, i32 2
  ret i32 %.lcssa
}
