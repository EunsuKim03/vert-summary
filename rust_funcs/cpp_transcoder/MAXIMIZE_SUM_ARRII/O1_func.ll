define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %tail.sroa.0.02.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %arr, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %_3.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2615, !noalias !2622, !noundef !37
  %_4.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2623, !noalias !2624, !noundef !37
  %_0.i.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2625
  store i32 %_3.i.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2625, !noalias !2626
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit": ; preds = %start, %bb4.i.i.i.i
  %_0.i.i.i5 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i5, label %bb8, label %bb7

bb7:                                              ; preds = %bb8, %bb8.1, %bb8.2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit"
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit" ], [ 0, %bb8 ], [ %_14.1, %bb8.1 ], [ %3, %bb8.2 ]
  ret i32 %sum.sroa.0.0.lcssa

bb8:                                              ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hecbc03128c160344E.exit"
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb7, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_14.1 = load i32, ptr %1, align 4, !noundef !37
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb6.2, label %bb7

bb6.2:                                            ; preds = %bb8.1
  %_15.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb6.2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_15.2
  %_14.2 = load i32, ptr %2, align 4, !noundef !37
  %3 = add i32 %_14.2, %_14.1
  br label %bb7

panic:                                            ; preds = %bb6.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0b6bd549e7152e3219d87f755ab1df3d) #24
  unreachable
}
