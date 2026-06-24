define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_2 = icmp slt i32 %N, 7
  br i1 %_2, label %bb13, label %bb2

bb2:                                              ; preds = %start
  %_4 = zext nneg i32 %N to i64
  %_21.0.i.i.i = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb18

bb14.i:                                           ; preds = %bb2
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb2.i17:                                          ; preds = %bb18, %bb24
  %iter1.sroa.0.061 = phi i32 [ %spec.select50, %bb24 ], [ 7, %bb18 ]
  %_0.i3.i18 = icmp sge i32 %iter1.sroa.0.061, %N
  %not._0.i3.i18 = xor i1 %_0.i3.i18, true
  %2 = zext i1 %not._0.i3.i18 to i32
  %spec.select50 = add nuw nsw i32 %iter1.sroa.0.061, %2
  %_25 = add nsw i32 %iter1.sroa.0.061, -4
  %_24 = sext i32 %_25 to i64
  %_52 = icmp ugt i32 %N, %_25
  br i1 %_52, label %bb20, label %panic2.invoke

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E.exit29": ; preds = %bb24
  %3 = getelementptr i32, ptr %0, i64 %_4
  %_40 = getelementptr i8, ptr %3, i64 -4
  %4 = load i32, ptr %_40, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb13

bb13:                                             ; preds = %start, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E.exit29"
  %_0.sroa.0.0 = phi i32 [ %4, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E.exit29" ], [ %N, %start ]
  ret i32 %_0.sroa.0.0

bb20:                                             ; preds = %bb2.i17
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_21 = shl i32 %_22, 1
  %_31 = add nsw i32 %iter1.sroa.0.061, -5
  %_30 = sext i32 %_31 to i64
  %_62 = icmp ugt i32 %N, %_31
  br i1 %_62, label %bb22, label %panic2.invoke

panic2.invoke:                                    ; preds = %bb11, %bb22, %bb20, %bb2.i17
  %.ph = phi i64 [ %_24, %bb2.i17 ], [ %_30, %bb20 ], [ %_35, %bb22 ], [ %_38, %bb11 ]
  %.ph87 = phi ptr [ @alloc_506212057596a7c60d3b77412992138b, %bb2.i17 ], [ @alloc_55d1a5b6cc2bb67f91fdaa711a6dce3a, %bb20 ], [ @alloc_4830824e781f2470ff81c18374510bf3, %bb22 ], [ @alloc_209eba98801309518a2580ad4205d3ae, %bb11 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %.ph, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph87) #21
          to label %panic2.cont unwind label %bb15

panic2.cont:                                      ; preds = %panic2.invoke
  unreachable

bb22:                                             ; preds = %bb20
  %_36 = add nsw i32 %iter1.sroa.0.061, -6
  %_35 = sext i32 %_36 to i64
  %_67 = icmp ugt i32 %N, %_36
  br i1 %_67, label %bb11, label %panic2.invoke

bb11:                                             ; preds = %bb22
  %_39 = zext nneg i32 %iter1.sroa.0.061 to i64
  %_38 = add nsw i64 %_39, -1
  %_73 = icmp ult i64 %_38, %_4
  br i1 %_73, label %bb24, label %panic2.invoke

bb24:                                             ; preds = %bb11
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_30
  %_28 = load i32, ptr %_29, align 4, !noundef !23
  %_27 = mul i32 %_28, 3
  %_34 = getelementptr inbounds nuw i32, ptr %0, i64 %_35
  %_33 = load i32, ptr %_34, align 4, !noundef !23
  %_32 = shl i32 %_33, 2
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_27, i32 %_32)
  %x.y.i30 = tail call noundef i32 @llvm.smax.i32(i32 %_21, i32 %x.y.i)
  %_37 = getelementptr inbounds nuw i32, ptr %0, i64 %_38
  store i32 %x.y.i30, ptr %_37, align 4
  %_0.i.not.i16 = icmp sgt i32 %spec.select50, %N
  %or.cond52 = select i1 %_0.i3.i18, i1 true, i1 %_0.i.not.i16
  br i1 %or.cond52, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha0b748e31f08ed93E.exit29", label %bb2.i17

bb18:                                             ; preds = %bb2
  store i32 1, ptr %0, align 4
  %_11.1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %_11.1, align 4
  %_11.2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %_11.2, align 4
  %_11.3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %_11.3, align 4
  %_11.4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 5, ptr %_11.4, align 4
  %_11.5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 6, ptr %_11.5, align 4
  br label %bb2.i17

bb15:                                             ; preds = %panic2.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  resume { ptr, i32 } %5
}
