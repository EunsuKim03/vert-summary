define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %tail.sroa.0.02.i.ptr.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %_3.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i, align 4, !alias.scope !2952, !noalias !2957, !noundef !3
  %_4.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2958, !noalias !2959, !noundef !3
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i, %_4.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"

bb4.i.i.i:                                        ; preds = %start
  store i32 %_4.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i, align 4, !alias.scope !2960
  store i32 %_3.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2960, !noalias !2961
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit": ; preds = %start, %bb4.i.i.i
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, -1
  %_10 = icmp ult i64 %_8, 2
  br i1 %_10, label %bb2, label %panic

bb2:                                              ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"
  %_12 = add nsw i64 %_9, -2
  %_13 = icmp ult i64 %_12, 2
  br i1 %_13, label %bb3, label %panic1

panic:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13sort_unstable17h12ff9310f994da96E.exit"
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_037c982f7113fad382747c29e3244c82) #26
  unreachable

bb3:                                              ; preds = %bb2
  %_15 = add nsw i64 %_9, -3
  %_16 = icmp ult i64 %_15, 2
  br i1 %_16, label %bb4, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_39aec2478f319ecb6e41d0d81fffd071) #26
  unreachable

bb4:                                              ; preds = %bb3
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %1, align 4, !noundef !3
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %2, align 4, !noundef !3
  %_6 = add i32 %_11, %_7
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15
  %_14 = load i32, ptr %3, align 4, !noundef !3
  %_0 = add i32 %_6, %_14
  ret i32 %_0

panic2:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4385c5a3a89a390cbd2f10c6aa51708b) #26
  unreachable
}
