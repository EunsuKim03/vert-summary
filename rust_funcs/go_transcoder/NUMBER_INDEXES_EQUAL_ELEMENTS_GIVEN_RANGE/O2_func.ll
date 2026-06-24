define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %1, i32 noundef %r) unnamed_addr #1 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_157 = icmp slt i32 %1, %r
  br i1 %_157, label %bb7.lr.ph, label %bb8

bb7.lr.ph:                                        ; preds = %start
  %_9.peel = sext i32 %1 to i64
  %_10.peel = icmp ult i32 %1, 2
  br i1 %_10.peel, label %bb2.peel, label %panic

bb2.peel:                                         ; preds = %bb7.lr.ph
  %_15 = icmp sgt i32 %r, 1
  %2 = add nuw nsw i32 %1, 1
  %_12.peel = zext nneg i32 %2 to i64
  %_14.peel = icmp ne i32 %1, 0
  %brmerge = or i1 %_14.peel, %_15
  br i1 %brmerge, label %panic1, label %bb8.loopexit

bb8.loopexit:                                     ; preds = %bb2.peel
  %3 = getelementptr inbounds nuw i32, ptr %a, i64 %_9.peel
  %_8.peel = load i32, ptr %3, align 4, !noundef !23
  %4 = getelementptr inbounds nuw i32, ptr %a, i64 %_12.peel
  %_11.peel = load i32, ptr %4, align 4, !noundef !23
  %_7.peel = icmp eq i32 %_8.peel, %_11.peel
  %5 = zext i1 %_7.peel to i32
  br label %bb8

bb8:                                              ; preds = %bb8.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %5, %bb8.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

panic:                                            ; preds = %bb7.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9.peel, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_581c8d08ad881064adc1bbad3c155a4e) #18
  unreachable

panic1:                                           ; preds = %bb2.peel
  %_12.peel.mux = select i1 %_14.peel, i64 %_12.peel, i64 2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12.peel.mux, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_043096376d92f15983d4886e51404ec4) #18
  unreachable
}
