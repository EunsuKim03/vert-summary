define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %coin = alloca [8 x i8], align 8
  store i64 %0, ptr %coin, align 8
  %tail.sroa.0.02.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %coin, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2935, !noalias !2942, !noundef !37
  %_4.i.i.i.i.i.i.i = load i32, ptr %coin, align 8, !alias.scope !2943, !noalias !2944, !noundef !37
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2945
  store i32 %_3.i.i.i.i.i.i.i, ptr %coin, align 8, !alias.scope !2945, !noalias !2946
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit": ; preds = %start, %bb4.i.i.i.i
  %_10 = sitofp i32 %n to float
  %_12 = add i32 %k, 1
  %_11 = sitofp i32 %_12 to float
  %_9 = fdiv float %_10, %_11
  %1 = tail call noundef float @llvm.ceil.f32(float %_9)
  %coins_needed = tail call i32 @llvm.fptosi.sat.i32.f32(float %1)
  %_0.i.i.i5 = icmp sgt i32 %coins_needed, 0
  br i1 %_0.i.i.i5, label %bb9, label %bb8

bb8:                                              ; preds = %bb9, %bb9.1, %bb9.2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit"
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit" ], [ %_20, %bb9 ], [ %3, %bb9.1 ], [ %5, %bb9.2 ]
  ret i32 %ans.sroa.0.0.lcssa

bb9:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5bd5bd7c29b4dc04E.exit"
  %_20 = load i32, ptr %coin, align 8, !noundef !37
  %_0.i.i.i.not = icmp eq i32 %coins_needed, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb8, label %bb9.1

bb9.1:                                            ; preds = %bb9
  %2 = getelementptr inbounds nuw i8, ptr %coin, i64 4
  %_20.1 = load i32, ptr %2, align 4, !noundef !37
  %3 = add i32 %_20.1, %_20
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %coins_needed
  br i1 %_0.i.i.i.1, label %bb7.2, label %bb8

bb7.2:                                            ; preds = %bb9.1
  %_21.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb9.2, label %panic

bb9.2:                                            ; preds = %bb7.2
  %4 = getelementptr inbounds nuw i32, ptr %coin, i64 %_21.2
  %_20.2 = load i32, ptr %4, align 4, !noundef !37
  %5 = add i32 %_20.2, %3
  br label %bb8

panic:                                            ; preds = %bb7.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_720df47507a6986b360d679d827ada95) #24
  unreachable
}
