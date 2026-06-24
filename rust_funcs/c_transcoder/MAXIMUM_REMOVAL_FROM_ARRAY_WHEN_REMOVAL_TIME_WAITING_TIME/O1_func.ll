define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %tail.sroa.0.02.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2935, !noalias !2942, !noundef !37
  %_4.i.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2943, !noalias !2944, !noundef !37
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2945
  store i32 %_3.i.i.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2945, !noalias !2946
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit": ; preds = %start, %bb4.i.i.i.i
  %_0.i.i.i7 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i7, label %bb8, label %bb7

bb7:                                              ; preds = %bb8, %bb8.1, %bb8.2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit"
  %count.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit" ], [ %1, %bb8 ], [ %count.sroa.0.1.1, %bb8.1 ], [ %count.sroa.0.1.2, %bb8.2 ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h7ec0736a628cc870E.exit"
  %_15 = load i32, ptr %arr, align 8, !noundef !37
  %_14.not = icmp sgt i32 %_15, -1
  %1 = zext i1 %_14.not to i32
  %2 = select i1 %_14.not, i32 %_15, i32 0
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb7, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_15.1 = load i32, ptr %3, align 4, !noundef !37
  %_14.not.1 = icmp sge i32 %_15.1, %2
  %4 = zext i1 %_14.not.1 to i32
  %count.sroa.0.1.1 = add nuw nsw i32 %1, %4
  %5 = select i1 %_14.not.1, i32 %_15.1, i32 0
  %cummulative_sum.sroa.0.1.1 = add i32 %5, %2
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb7

bb6.2:                                            ; preds = %bb8.1
  %_16.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb6.2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16.2
  %_15.2 = load i32, ptr %6, align 4, !noundef !37
  %_14.not.2 = icmp sge i32 %_15.2, %cummulative_sum.sroa.0.1.1
  %7 = zext i1 %_14.not.2 to i32
  %count.sroa.0.1.2 = add nuw nsw i32 %count.sroa.0.1.1, %7
  br label %bb7

panic:                                            ; preds = %bb6.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_63252c550bd639529741a965d328512b) #24
  unreachable
}
