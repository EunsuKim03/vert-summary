define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_20 = load float, ptr %arr, align 8
  %1 = fadd float %_20, 0.000000e+00
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_20.1 = load float, ptr %2, align 4
  %3 = fadd float %1, %_20.1
  br label %bb2

bb2:                                              ; preds = %bb17, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb17 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %4 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %4
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb21

bb8.preheader:                                    ; preds = %bb2
  %_0.i.i.i1533.not = icmp eq i32 %iter.sroa.0.0, 0
  br i1 %_0.i.i.i1533.not, label %bb11, label %bb12

bb21:                                             ; preds = %bb17, %bb2
  %i.sroa.0.0 = phi i32 [ -1, %bb2 ], [ %iter.sroa.0.0, %bb17 ]
  ret i32 %i.sroa.0.0

bb11:                                             ; preds = %bb12, %bb12.1, %bb12.2, %bb8.preheader
  %leftsum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb8.preheader ], [ %1, %bb12 ], [ %3, %bb12.1 ], [ %8, %bb12.2 ]
  %_25 = add nuw i32 %iter.sroa.0.0, 1
  %_0.i.i.i2237 = icmp slt i32 %_25, %n
  br i1 %_0.i.i.i2237, label %bb16.preheader, label %bb17

bb16.preheader:                                   ; preds = %bb11
  %spec.select2938 = add nuw i32 %iter.sroa.0.0, 2
  %_32 = sext i32 %_25 to i64
  %_33 = icmp eq i32 %iter.sroa.0.0, 0
  br i1 %_33, label %bb18, label %panic

bb17:                                             ; preds = %bb18, %bb11
  %rightsum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb11 ], [ %6, %bb18 ]
  %_34 = fcmp oeq float %leftsum.sroa.0.0.lcssa, %rightsum.sroa.0.0.lcssa
  br i1 %_34, label %bb21, label %bb2

bb18:                                             ; preds = %bb16.preheader
  %5 = getelementptr inbounds nuw float, ptr %arr, i64 %_32
  %_31 = load float, ptr %5, align 4, !noundef !37
  %6 = fadd float %_31, 0.000000e+00
  %_0.i.i.i22 = icmp slt i32 %spec.select2938, %n
  br i1 %_0.i.i.i22, label %panic.split.loop.exit, label %bb17

panic.split.loop.exit:                            ; preds = %bb18
  %_32.1.le = zext nneg i32 %spec.select2938 to i64
  br label %panic

panic:                                            ; preds = %bb16.preheader, %panic.split.loop.exit
  %_32.lcssa = phi i64 [ %_32.1.le, %panic.split.loop.exit ], [ %_32, %bb16.preheader ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_32.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_034ee46ff1995799f35174dec12a7857) #24
  unreachable

bb12:                                             ; preds = %bb8.preheader
  %_0.i.i.i15.not = icmp eq i32 %iter.sroa.0.0, 1
  %spec.select27 = select i1 %_0.i.i.i15.not, i32 1, i32 2
  br i1 %_0.i.i.i15.not, label %bb11, label %bb12.1

bb12.1:                                           ; preds = %bb12
  %_0.i.i.i15.1 = icmp samesign ult i32 %spec.select27, %iter.sroa.0.0
  br i1 %_0.i.i.i15.1, label %bb10.2, label %bb11

bb10.2:                                           ; preds = %bb12.1
  %_21.2 = zext nneg i32 %spec.select27 to i64
  br i1 %_0.i.i.i15.not, label %bb12.2, label %panic4

bb12.2:                                           ; preds = %bb10.2
  %7 = getelementptr inbounds nuw float, ptr %arr, i64 %_21.2
  %_20.2 = load float, ptr %7, align 4, !noundef !37
  %8 = fadd float %3, %_20.2
  br label %bb11

panic4:                                           ; preds = %bb10.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_00ced026798fe6206e6a2bbb4d9b1709) #24
  unreachable
}
