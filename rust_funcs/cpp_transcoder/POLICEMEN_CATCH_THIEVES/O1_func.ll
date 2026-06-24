define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %pol = alloca [24 x i8], align 8
  %thi = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %thi)
  store i64 0, ptr %thi, align 8, !alias.scope !1631
  %0 = getelementptr inbounds nuw i8, ptr %thi, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !alias.scope !1631
  %1 = getelementptr inbounds nuw i8, ptr %thi, i64 16
  store i64 0, ptr %1, align 8, !alias.scope !1631
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pol)
  store i64 0, ptr %pol, align 8, !alias.scope !1634
  %2 = getelementptr inbounds nuw i8, ptr %pol, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %2, align 8, !alias.scope !1634
  %3 = getelementptr inbounds nuw i8, ptr %pol, i64 16
  store i64 0, ptr %3, align 8, !alias.scope !1634
  %_0.i.i.i58 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i58, label %bb7, label %bb19.preheader

bb41:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %4, %cleanup ], [ %lpad.phi, %cleanup1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %thi, i64 noundef 4, i64 noundef 4)
          to label %bb42 unwind label %terminate

cleanup:                                          ; preds = %bb37
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb41

cleanup1.loopexit:                                ; preds = %bb1.i.i, %bb1.i.i47
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %panic.i.i.invoke, %panic
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %pol, i64 noundef 4, i64 noundef 4)
          to label %bb41 unwind label %terminate

bb19.preheader:                                   ; preds = %bb18, %start
  %_0.i = load i64, ptr %1, align 8, !alias.scope !1637, !noundef !37
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  call void @llvm.assume(i1 %_2.i)
  %_28 = trunc i64 %_0.i to i32
  %_2661 = icmp sgt i32 %_28, 0
  br i1 %_2661, label %bb21.lr.ph, label %bb37

bb21.lr.ph:                                       ; preds = %bb19.preheader
  %_0.i15 = load i64, ptr %3, align 8, !alias.scope !1640, !noundef !37
  %_2.i16 = icmp ult i64 %_0.i15, 2305843009213693952
  call void @llvm.assume(i1 %_2.i16)
  %_33 = trunc i64 %_0.i15 to i32
  %_6.i = load ptr, ptr %0, align 8, !nonnull !37
  %_6.i22 = load ptr, ptr %2, align 8, !nonnull !37
  br label %bb21

bb7:                                              ; preds = %start, %bb18
  %spec.select60 = phi i32 [ %spec.select, %bb18 ], [ 1, %start ]
  %iter.sroa.0.059 = phi i32 [ %spec.select60, %bb18 ], [ 0, %start ]
  %_15 = zext nneg i32 %iter.sroa.0.059 to i64
  %_17 = icmp samesign ugt i64 %arr.1, %_15
  br i1 %_17, label %bb9, label %panic

bb21:                                             ; preds = %bb21.lr.ph, %bb34
  %res.sroa.0.064 = phi i32 [ 0, %bb21.lr.ph ], [ %res.sroa.0.1, %bb34 ]
  %l.sroa.0.063 = phi i32 [ 0, %bb21.lr.ph ], [ %l.sroa.0.1, %bb34 ]
  %r.sroa.0.062 = phi i32 [ 0, %bb21.lr.ph ], [ %r.sroa.0.1, %bb34 ]
  %_31 = icmp slt i32 %r.sroa.0.062, %_33
  br i1 %_31, label %bb23, label %bb37

bb37:                                             ; preds = %bb34, %bb21, %bb19.preheader
  %res.sroa.0.0.lcssa = phi i32 [ 0, %bb19.preheader ], [ %res.sroa.0.1, %bb34 ], [ %res.sroa.0.064, %bb21 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %pol, i64 noundef 4, i64 noundef 4)
          to label %bb38 unwind label %cleanup

bb23:                                             ; preds = %bb21
  %_42 = sext i32 %l.sroa.0.063 to i64
  %_4.i.i18 = icmp ugt i64 %_0.i, %_42
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit", label %panic.i.i.invoke

panic.i.i.invoke:                                 ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit", %bb23
  %5 = phi i64 [ %_42, %bb23 ], [ %_47, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit" ]
  %6 = phi i64 [ %_0.i, %bb23 ], [ %_0.i15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit" ]
  %7 = phi ptr [ @alloc_79ba4d68c6fa5363035f9bbb9a6c65f0, %bb23 ], [ @alloc_8a5a8ac5dfd1b4a16ded1f6ce832206e, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %5, i64 noundef range(i64 0, 2305843009213693952) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #24
          to label %panic.i.i.cont unwind label %cleanup1.loopexit.split-lp

panic.i.i.cont:                                   ; preds = %panic.i.i.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit": ; preds = %bb23
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_42
  %_39 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_47 = sext i32 %r.sroa.0.062 to i64
  %_4.i.i20 = icmp ugt i64 %_0.i15, %_47
  br i1 %_4.i.i20, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit25", label %panic.i.i.invoke

bb38:                                             ; preds = %bb37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pol)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %thi, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %thi)
  ret i32 %res.sroa.0.0.lcssa

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit25": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit"
  %_0.i.i23 = getelementptr inbounds nuw i32, ptr %_6.i22, i64 %_47
  %_44 = load i32, ptr %_0.i.i23, align 4, !noundef !37
  %_38 = sub i32 %_39, %_44
  %_0.sroa.0.0.i = call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_38, i1 false)
  %_36.not = icmp sgt i32 %_0.sroa.0.0.i, %k
  br i1 %_36.not, label %bb28, label %bb27

bb28:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit25"
  %_49 = icmp slt i32 %_39, %_44
  br i1 %_49, label %bb31, label %bb32

bb27:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h553d59227c4dbaddE.exit25"
  %8 = add i32 %res.sroa.0.064, 1
  %9 = add i32 %l.sroa.0.063, 1
  %10 = add nsw i32 %r.sroa.0.062, 1
  br label %bb34

bb32:                                             ; preds = %bb28
  %11 = add nsw i32 %r.sroa.0.062, 1
  br label %bb34

bb31:                                             ; preds = %bb28
  %12 = add i32 %l.sroa.0.063, 1
  br label %bb34

bb34:                                             ; preds = %bb32, %bb31, %bb27
  %r.sroa.0.1 = phi i32 [ %10, %bb27 ], [ %r.sroa.0.062, %bb31 ], [ %11, %bb32 ]
  %l.sroa.0.1 = phi i32 [ %9, %bb27 ], [ %12, %bb31 ], [ %l.sroa.0.063, %bb32 ]
  %res.sroa.0.1 = phi i32 [ %8, %bb27 ], [ %res.sroa.0.064, %bb31 ], [ %res.sroa.0.064, %bb32 ]
  %_26 = icmp slt i32 %l.sroa.0.1, %_28
  br i1 %_26, label %bb21, label %bb37

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_15
  %_14 = load i32, ptr %13, align 4, !range !1643, !noundef !37
  switch i32 %_14, label %bb18 [
    i32 80, label %bb10
    i32 84, label %bb14
  ]

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8cfc95be86395af95e52f3ac6e7e425b) #25
          to label %unreachable unwind label %cleanup1.loopexit.split-lp

unreachable:                                      ; preds = %panic
  unreachable

bb10:                                             ; preds = %bb9
  %len.i.i = load i64, ptr %3, align 8, !alias.scope !1644, !noundef !37
  %self1.i.i = load i64, ptr %pol, align 8, !range !1624, !alias.scope !1644, !noundef !37
  %_4.i.i40 = icmp eq i64 %len.i.i, %self1.i.i
  br i1 %_4.i.i40, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit"

bb1.i.i:                                          ; preds = %bb10
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h76ce0fae0b6b9fe3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %pol)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit": ; preds = %bb1.i.i, %bb10
  %_15.i.i = load ptr, ptr %2, align 8, !alias.scope !1644, !nonnull !37, !noundef !37
  %end.i.i = getelementptr inbounds nuw i32, ptr %_15.i.i, i64 %len.i.i
  store i32 %iter.sroa.0.059, ptr %end.i.i, align 4
  %14 = add i64 %len.i.i, 1
  store i64 %14, ptr %3, align 8, !alias.scope !1644
  br label %bb18

bb14:                                             ; preds = %bb9
  %len.i.i42 = load i64, ptr %1, align 8, !alias.scope !1649, !noundef !37
  %self1.i.i43 = load i64, ptr %thi, align 8, !range !1624, !alias.scope !1649, !noundef !37
  %_4.i.i44 = icmp eq i64 %len.i.i42, %self1.i.i43
  br i1 %_4.i.i44, label %bb1.i.i47, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit49"

bb1.i.i47:                                        ; preds = %bb14
; invoke alloc::raw_vec::RawVec<T,A>::grow_one
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h76ce0fae0b6b9fe3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %thi)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit49" unwind label %cleanup1.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit49": ; preds = %bb1.i.i47, %bb14
  %_15.i.i45 = load ptr, ptr %0, align 8, !alias.scope !1649, !nonnull !37, !noundef !37
  %end.i.i46 = getelementptr inbounds nuw i32, ptr %_15.i.i45, i64 %len.i.i42
  store i32 %iter.sroa.0.059, ptr %end.i.i46, align 4
  %15 = add i64 %len.i.i42, 1
  store i64 %15, ptr %1, align 8, !alias.scope !1649
  br label %bb18

bb18:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit49", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h3f99be5930b7a2acE.exit", %bb9
  %_0.i.i.i = icmp slt i32 %spec.select60, %n
  %16 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select60, %16
  br i1 %_0.i.i.i, label %bb7, label %bb19.preheader

terminate:                                        ; preds = %cleanup1, %bb41
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb42:                                             ; preds = %bb41
  resume { ptr, i32 } %.pn
}
