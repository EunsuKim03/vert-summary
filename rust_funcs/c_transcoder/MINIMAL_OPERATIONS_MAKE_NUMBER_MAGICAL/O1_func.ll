define noundef range(i32 0, 7) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %s.0, i64 noundef range(i64 0, 2305843009213693952) %s.1) unnamed_addr #3 {
start:
  %_61 = icmp samesign ugt i64 %s.1, 2
  %_67.not = icmp eq i64 %s.1, 3
  %_73 = icmp samesign ugt i64 %s.1, 4
  %_79.not = icmp eq i64 %s.1, 5
  %0 = getelementptr inbounds nuw i8, ptr %s.0, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %s.0, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %s.0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %s.0, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %s.0, i64 20
  br label %bb8.preheader

bb2.loopexit:                                     ; preds = %bb8.loopexit
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, 10
  br i1 %exitcond164.not, label %bb6, label %bb8.preheader

bb8.preheader:                                    ; preds = %start, %bb2.loopexit
  %indvars.iv160 = phi i64 [ 0, %start ], [ %indvars.iv.next161, %bb2.loopexit ]
  %ans.sroa.0.0130 = phi i32 [ 6, %start ], [ %ans.sroa.0.6, %bb2.loopexit ]
  br label %bb13.preheader

bb6:                                              ; preds = %bb2.loopexit
  ret i32 %ans.sroa.0.6

bb8.loopexit:                                     ; preds = %bb13.loopexit
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next155, 10
  br i1 %exitcond159.not, label %bb2.loopexit, label %bb13.preheader

bb13.preheader:                                   ; preds = %bb8.preheader, %bb8.loopexit
  %indvars.iv154 = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next155, %bb8.loopexit ]
  %ans.sroa.0.1127 = phi i32 [ %ans.sroa.0.0130, %bb8.preheader ], [ %ans.sroa.0.6, %bb8.loopexit ]
  %5 = add nuw nsw i64 %indvars.iv154, %indvars.iv160
  br label %bb18.preheader

bb13.loopexit:                                    ; preds = %bb18.loopexit
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  %exitcond153.not = icmp eq i64 %indvars.iv.next149, 10
  br i1 %exitcond153.not, label %bb8.loopexit, label %bb18.preheader

bb18.preheader:                                   ; preds = %bb13.preheader, %bb13.loopexit
  %indvars.iv148 = phi i64 [ 0, %bb13.preheader ], [ %indvars.iv.next149, %bb13.loopexit ]
  %ans.sroa.0.2124 = phi i32 [ %ans.sroa.0.1127, %bb13.preheader ], [ %ans.sroa.0.6, %bb13.loopexit ]
  %6 = add nuw nsw i64 %5, %indvars.iv148
  br label %bb23.preheader

bb18.loopexit:                                    ; preds = %bb23.loopexit
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, 10
  br i1 %exitcond147.not, label %bb13.loopexit, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb18.preheader, %bb18.loopexit
  %indvars.iv143 = phi i64 [ 0, %bb18.preheader ], [ %indvars.iv.next144, %bb18.loopexit ]
  %ans.sroa.0.3121 = phi i32 [ %ans.sroa.0.2124, %bb18.preheader ], [ %ans.sroa.0.6, %bb18.loopexit ]
  br label %bb28.preheader

bb23.loopexit:                                    ; preds = %bb61
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next138, 10
  br i1 %exitcond142.not, label %bb18.loopexit, label %bb28.preheader

bb28.preheader:                                   ; preds = %bb23.preheader, %bb23.loopexit
  %indvars.iv137 = phi i64 [ 0, %bb23.preheader ], [ %indvars.iv.next138, %bb23.loopexit ]
  %ans.sroa.0.4118 = phi i32 [ %ans.sroa.0.3121, %bb23.preheader ], [ %ans.sroa.0.6, %bb23.loopexit ]
  %7 = add nuw nsw i64 %indvars.iv137, %indvars.iv143
  br label %bb30

bb30:                                             ; preds = %bb28.preheader, %bb61
  %indvars.iv132 = phi i64 [ 0, %bb28.preheader ], [ %indvars.iv.next133, %bb61 ]
  %ans.sroa.0.5115 = phi i32 [ %ans.sroa.0.4118, %bb28.preheader ], [ %ans.sroa.0.6, %bb61 ]
  %8 = add nuw nsw i64 %7, %indvars.iv132
  %_38 = icmp eq i64 %6, %8
  br i1 %_38, label %bb32, label %bb61

bb32:                                             ; preds = %bb30
  switch i64 %s.1, label %bb37 [
    i64 0, label %panic
    i64 1, label %panic6
  ]

bb61:                                             ; preds = %bb53, %bb30
  %ans.sroa.0.6 = phi i32 [ %ans.sroa.0.5115, %bb30 ], [ %spec.select30, %bb53 ]
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next133, 10
  br i1 %exitcond.not, label %bb23.loopexit, label %bb30

panic:                                            ; preds = %bb32
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fad321c1044677497d38898054c35a5a) #24
  unreachable

bb37:                                             ; preds = %bb32
  br i1 %_61, label %bb41, label %panic7

panic6:                                           ; preds = %bb32
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ec8387be9008a41220c2b3f415e6d923) #24
  unreachable

bb41:                                             ; preds = %bb37
  br i1 %_67.not, label %panic8, label %bb45

panic7:                                           ; preds = %bb37
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f1ce2d1ba351ebd9a4923ab9afa879a3) #24
  unreachable

bb45:                                             ; preds = %bb41
  br i1 %_73, label %bb49, label %panic9

panic8:                                           ; preds = %bb41
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e0c7be26c5b05d4116d889cc8a14d092) #24
  unreachable

bb49:                                             ; preds = %bb45
  br i1 %_79.not, label %panic10, label %bb53

panic9:                                           ; preds = %bb45
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 4, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb318ba259575769a505026434c47120) #24
  unreachable

bb53:                                             ; preds = %bb49
  %_72 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %_71 = zext nneg i32 %_72 to i64
  %_70 = add nsw i64 %_71, -48
  %_69.not = icmp ne i64 %_70, %indvars.iv137
  %_54 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %_53 = zext nneg i32 %_54 to i64
  %_52 = add nsw i64 %_53, -48
  %_51.not = icmp eq i64 %_52, %indvars.iv154
  %_47 = load i32, ptr %s.0, align 4, !range !1630, !noundef !37
  %_46 = zext nneg i32 %_47 to i64
  %_45 = add nsw i64 %_46, -48
  %_44.not = icmp ne i64 %_45, %indvars.iv160
  %spec.select = zext i1 %_44.not to i32
  %9 = select i1 %_44.not, i32 2, i32 1
  %spec.select25 = select i1 %_51.not, i32 %spec.select, i32 %9
  %_60 = load i32, ptr %2, align 4, !range !1630, !noundef !37
  %_59 = zext nneg i32 %_60 to i64
  %_58 = add nsw i64 %_59, -48
  %_57.not = icmp ne i64 %_58, %indvars.iv148
  %10 = zext i1 %_57.not to i32
  %_66 = load i32, ptr %3, align 4, !range !1630, !noundef !37
  %_65 = zext nneg i32 %_66 to i64
  %_64 = add nsw i64 %_65, -48
  %_63.not = icmp ne i64 %_64, %indvars.iv143
  %11 = zext i1 %_63.not to i32
  %12 = zext i1 %_69.not to i32
  %_78 = load i32, ptr %4, align 4, !range !1630, !noundef !37
  %_77 = zext nneg i32 %_78 to i64
  %_76 = add nsw i64 %_77, -48
  %_75.not = icmp ne i64 %_76, %indvars.iv132
  %13 = zext i1 %_75.not to i32
  %spec.select26 = add nuw nsw i32 %10, %12
  %spec.select27 = add nuw nsw i32 %spec.select26, %spec.select25
  %spec.select28 = add nuw nsw i32 %spec.select27, %11
  %spec.select29 = add nuw nsw i32 %spec.select28, %13
  %spec.select30 = tail call i32 @llvm.smin.i32(i32 %spec.select29, i32 %ans.sroa.0.5115)
  br label %bb61

panic10:                                          ; preds = %bb49
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 5, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0fe6300533cdc2852eea25def6deb38b) #24
  unreachable
}
