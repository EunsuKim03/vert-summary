define noundef range(i32 0, 7) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %s.0, i64 noundef range(i64 0, 2305843009213693952) %s.1) unnamed_addr #1 {
start:
  %_43 = icmp samesign ugt i64 %s.1, 2
  %_49.not = icmp eq i64 %s.1, 3
  %_55 = icmp samesign ugt i64 %s.1, 4
  %_61.not = icmp eq i64 %s.1, 5
  %0 = getelementptr inbounds nuw i8, ptr %s.0, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %s.0, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %s.0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %s.0, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %s.0, i64 20
  br label %bb5.preheader

bb1.loopexit:                                     ; preds = %bb5.loopexit
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, 10
  br i1 %exitcond124.not, label %bb4, label %bb5.preheader

bb5.preheader:                                    ; preds = %start, %bb1.loopexit
  %indvars.iv120 = phi i64 [ 0, %start ], [ %indvars.iv.next121, %bb1.loopexit ]
  %ans.sroa.0.089 = phi i32 [ 6, %start ], [ %ans.sroa.0.6, %bb1.loopexit ]
  br label %bb8.preheader

bb4:                                              ; preds = %bb1.loopexit
  ret i32 %ans.sroa.0.6

bb5.loopexit:                                     ; preds = %bb8.loopexit
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next115, 10
  br i1 %exitcond119.not, label %bb1.loopexit, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb5.preheader, %bb5.loopexit
  %indvars.iv114 = phi i64 [ 0, %bb5.preheader ], [ %indvars.iv.next115, %bb5.loopexit ]
  %ans.sroa.0.186 = phi i32 [ %ans.sroa.0.089, %bb5.preheader ], [ %ans.sroa.0.6, %bb5.loopexit ]
  %5 = add nuw nsw i64 %indvars.iv114, %indvars.iv120
  br label %bb11.preheader

bb8.loopexit:                                     ; preds = %bb11.loopexit
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next109, 10
  br i1 %exitcond113.not, label %bb5.loopexit, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb8.preheader, %bb8.loopexit
  %indvars.iv108 = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next109, %bb8.loopexit ]
  %ans.sroa.0.283 = phi i32 [ %ans.sroa.0.186, %bb8.preheader ], [ %ans.sroa.0.6, %bb8.loopexit ]
  %6 = add nuw nsw i64 %5, %indvars.iv108
  br label %bb14.preheader

bb11.loopexit:                                    ; preds = %bb14.loopexit
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, 10
  br i1 %exitcond107.not, label %bb8.loopexit, label %bb14.preheader

bb14.preheader:                                   ; preds = %bb11.preheader, %bb11.loopexit
  %indvars.iv103 = phi i64 [ 0, %bb11.preheader ], [ %indvars.iv.next104, %bb11.loopexit ]
  %ans.sroa.0.380 = phi i32 [ %ans.sroa.0.283, %bb11.preheader ], [ %ans.sroa.0.6, %bb11.loopexit ]
  br label %bb17.preheader

bb14.loopexit:                                    ; preds = %bb49
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next98, 10
  br i1 %exitcond102.not, label %bb11.loopexit, label %bb17.preheader

bb17.preheader:                                   ; preds = %bb14.preheader, %bb14.loopexit
  %indvars.iv97 = phi i64 [ 0, %bb14.preheader ], [ %indvars.iv.next98, %bb14.loopexit ]
  %ans.sroa.0.477 = phi i32 [ %ans.sroa.0.380, %bb14.preheader ], [ %ans.sroa.0.6, %bb14.loopexit ]
  %7 = add nuw nsw i64 %indvars.iv97, %indvars.iv103
  br label %bb18

bb18:                                             ; preds = %bb17.preheader, %bb49
  %indvars.iv91 = phi i64 [ 0, %bb17.preheader ], [ %indvars.iv.next92, %bb49 ]
  %ans.sroa.0.574 = phi i32 [ %ans.sroa.0.477, %bb17.preheader ], [ %ans.sroa.0.6, %bb49 ]
  %8 = add nuw nsw i64 %7, %indvars.iv91
  %_20 = icmp eq i64 %6, %8
  br i1 %_20, label %bb20, label %bb49

bb20:                                             ; preds = %bb18
  switch i64 %s.1, label %bb25 [
    i64 0, label %panic
    i64 1, label %panic6
  ]

bb49:                                             ; preds = %bb41, %bb18
  %ans.sroa.0.6 = phi i32 [ %ans.sroa.0.574, %bb18 ], [ %spec.select36, %bb41 ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next92, 10
  br i1 %exitcond.not, label %bb14.loopexit, label %bb18

panic:                                            ; preds = %bb20
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fad321c1044677497d38898054c35a5a) #18
  unreachable

bb25:                                             ; preds = %bb20
  br i1 %_43, label %bb29, label %panic7

panic6:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ec8387be9008a41220c2b3f415e6d923) #18
  unreachable

bb29:                                             ; preds = %bb25
  br i1 %_49.not, label %panic8, label %bb33

panic7:                                           ; preds = %bb25
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f1ce2d1ba351ebd9a4923ab9afa879a3) #18
  unreachable

bb33:                                             ; preds = %bb29
  br i1 %_55, label %bb37, label %panic9

panic8:                                           ; preds = %bb29
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e0c7be26c5b05d4116d889cc8a14d092) #18
  unreachable

bb37:                                             ; preds = %bb33
  br i1 %_61.not, label %panic10, label %bb41

panic9:                                           ; preds = %bb33
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 4, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb318ba259575769a505026434c47120) #18
  unreachable

bb41:                                             ; preds = %bb37
  %_54 = load i32, ptr %0, align 4, !range !1031, !noundef !23
  %_53 = zext nneg i32 %_54 to i64
  %_52 = add nsw i64 %_53, -48
  %_51.not = icmp ne i64 %_52, %indvars.iv97
  %_36 = load i32, ptr %1, align 4, !range !1031, !noundef !23
  %_35 = zext nneg i32 %_36 to i64
  %_34 = add nsw i64 %_35, -48
  %_33.not = icmp eq i64 %_34, %indvars.iv114
  %_29 = load i32, ptr %s.0, align 4, !range !1031, !noundef !23
  %_28 = zext nneg i32 %_29 to i64
  %_27 = add nsw i64 %_28, -48
  %_26.not = icmp ne i64 %_27, %indvars.iv120
  %spec.select = zext i1 %_26.not to i32
  %9 = select i1 %_26.not, i32 2, i32 1
  %spec.select31 = select i1 %_33.not, i32 %spec.select, i32 %9
  %_42 = load i32, ptr %2, align 4, !range !1031, !noundef !23
  %_41 = zext nneg i32 %_42 to i64
  %_40 = add nsw i64 %_41, -48
  %_39.not = icmp ne i64 %_40, %indvars.iv108
  %10 = zext i1 %_39.not to i32
  %_48 = load i32, ptr %3, align 4, !range !1031, !noundef !23
  %_47 = zext nneg i32 %_48 to i64
  %_46 = add nsw i64 %_47, -48
  %_45.not = icmp ne i64 %_46, %indvars.iv103
  %11 = zext i1 %_45.not to i32
  %12 = zext i1 %_51.not to i32
  %_60 = load i32, ptr %4, align 4, !range !1031, !noundef !23
  %_59 = zext nneg i32 %_60 to i64
  %_58 = add nsw i64 %_59, -48
  %_57.not = icmp ne i64 %_58, %indvars.iv91
  %13 = zext i1 %_57.not to i32
  %spec.select32 = add nuw nsw i32 %10, %12
  %spec.select33 = add nuw nsw i32 %spec.select32, %spec.select31
  %spec.select34 = add nuw nsw i32 %spec.select33, %11
  %spec.select35 = add nuw nsw i32 %spec.select34, %13
  %spec.select36 = tail call i32 @llvm.smin.i32(i32 %spec.select35, i32 %ans.sroa.0.574)
  br label %bb49

panic10:                                          ; preds = %bb37
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 5, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0fe6300533cdc2852eea25def6deb38b) #18
  unreachable
}
