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
  %_3.i.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2935, !noalias !2942, !noundef !32
  %_4.i.i.i.i.i.i.i = load i32, ptr %arr, align 8, !alias.scope !2943, !noalias !2944, !noundef !32
  %_0.i.i.i.i.i = icmp slt i32 %_3.i.i.i.i.i.i.i, %_4.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit"

bb4.i.i.i.i:                                      ; preds = %start
  store i32 %_4.i.i.i.i.i.i.i, ptr %tail.sroa.0.02.i.ptr.i.i, align 4, !alias.scope !2945
  store i32 %_3.i.i.i.i.i.i.i, ptr %arr, align 8, !alias.scope !2945, !noalias !2946
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit": ; preds = %start, %bb4.i.i.i.i
  %_0.i.i.i10 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i10, label %bb9.peel, label %bb7

bb9.peel:                                         ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit"
  %_18.peel = load i32, ptr %arr, align 8, !noundef !32
  %_0.i.i.i.peel.not = icmp eq i32 %n, 1
  %spec.select.peel = select i1 %_0.i.i.i.peel.not, i32 1, i32 2
  br i1 %_0.i.i.i.peel.not, label %bb7.loopexit, label %bb11.peel24

bb11.peel24:                                      ; preds = %bb9.peel
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_22.peel26 = load i32, ptr %1, align 4, !noundef !32
  %_0.i.i.i.peel34 = icmp slt i32 %spec.select.peel, %n
  %2 = zext i1 %_0.i.i.i.peel34 to i32
  %spec.select.peel35 = add nuw nsw i32 %spec.select.peel, %2
  br i1 %_0.i.i.i.peel34, label %bb6, label %bb7.loopexit

bb6:                                              ; preds = %bb11.peel24, %bb12
  %spec.select14 = phi i32 [ %spec.select, %bb12 ], [ %spec.select.peel35, %bb11.peel24 ]
  %b.sroa.0.013 = phi i32 [ %b.sroa.0.1, %bb12 ], [ %_22.peel26, %bb11.peel24 ]
  %a.sroa.0.012 = phi i32 [ %a.sroa.0.1, %bb12 ], [ %_18.peel, %bb11.peel24 ]
  %iter.sroa.0.011 = phi i32 [ %spec.select14, %bb12 ], [ %spec.select.peel, %bb11.peel24 ]
  %3 = and i32 %iter.sroa.0.011, 1
  %_15 = icmp eq i32 %3, 0
  %_19 = zext nneg i32 %iter.sroa.0.011 to i64
  %_20 = icmp samesign ult i32 %iter.sroa.0.011, 2
  br i1 %_15, label %bb8, label %bb10

bb7.loopexit:                                     ; preds = %bb12, %bb11.peel24, %bb9.peel
  %a.sroa.0.1.lcssa = phi i32 [ %_18.peel, %bb9.peel ], [ %_18.peel, %bb11.peel24 ], [ %a.sroa.0.1, %bb12 ]
  %b.sroa.0.1.lcssa = phi i32 [ 0, %bb9.peel ], [ %_22.peel26, %bb11.peel24 ], [ %b.sroa.0.1, %bb12 ]
  %4 = add i32 %b.sroa.0.1.lcssa, %a.sroa.0.1.lcssa
  br label %bb7

bb7:                                              ; preds = %bb7.loopexit, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit"
  %_0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h5753901e1bb031baE.exit" ], [ %4, %bb7.loopexit ]
  ret i32 %_0

bb10:                                             ; preds = %bb6
  br i1 %_20, label %bb11, label %panic

bb8:                                              ; preds = %bb6
  br i1 %_20, label %bb9, label %panic1

bb11:                                             ; preds = %bb10
  %_21 = mul i32 %b.sroa.0.013, 10
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_22 = load i32, ptr %5, align 4, !noundef !32
  %6 = add i32 %_22, %_21
  br label %bb12

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a2b5d47ca62d59f99c890060d39823fb) #24
  unreachable

bb12:                                             ; preds = %bb9, %bb11
  %a.sroa.0.1 = phi i32 [ %9, %bb9 ], [ %a.sroa.0.012, %bb11 ]
  %b.sroa.0.1 = phi i32 [ %b.sroa.0.013, %bb9 ], [ %6, %bb11 ]
  %_0.i.i.i = icmp slt i32 %spec.select14, %n
  %7 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select14, %7
  br i1 %_0.i.i.i, label %bb6, label %bb7.loopexit, !llvm.loop !2951

bb9:                                              ; preds = %bb8
  %_17 = mul i32 %a.sroa.0.012, 10
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %8, align 4, !noundef !32
  %9 = add i32 %_18, %_17
  br label %bb12

panic1:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_de6ab642026ff70e894e961e223023d5) #24
  unreachable
}
