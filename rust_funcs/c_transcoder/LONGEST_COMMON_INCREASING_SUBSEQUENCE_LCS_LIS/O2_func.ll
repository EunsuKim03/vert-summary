define noundef range(i32 0, 3) i32 @f_gold(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %arr1, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %arr2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb22.preheader:
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1031
  %_9 = load float, ptr %arr1, align 4, !noundef !23
  %_11 = load float, ptr %arr2, align 4, !noundef !23
  %_8 = fcmp oeq float %_9, %_11
  %0 = getelementptr inbounds nuw i8, ptr %arr2, i64 4
  %_11.1 = load float, ptr %0, align 4, !noundef !23
  %_8.1 = fcmp oeq float %_9, %_11.1
  %1 = getelementptr inbounds nuw i8, ptr %arr1, i64 4
  %_9.1 = load float, ptr %1, align 4, !noundef !23
  %_8.132 = fcmp oeq float %_9.1, %_11
  %narrow = or i1 %_8, %_8.132
  %_20.137 = fcmp ogt float %_9.1, %_11
  %2 = and i1 %_20.137, %narrow
  %current.sroa.0.1.1 = select i1 %2, i32 2, i32 1
  %_8.1.1 = fcmp oeq float %_9.1, %_11.1
  %3 = or i1 %_8.1, %narrow
  %4 = zext i1 %3 to i32
  %5 = select i1 %_8.1.1, i32 %current.sroa.0.1.1, i32 %4
  ret i32 %5
}
