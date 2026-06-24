define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %m to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_7, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit"
  %_8.i.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h91d89230ae040210E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_7, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i21, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i22
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i22 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i22 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i22 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i22, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i22

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8, !noalias !1077
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %11, align 8, !alias.scope !1084, !noalias !1098
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit"

bb17.i.i21:                                       ; preds = %bb3.i3.i22, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i22 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_7, ptr %7, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit"

bb3.i3.i22:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %12 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_8
  br i1 %exitcond.not.i.i, label %bb17.i.i21, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i130 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i130, label %bb5.preheader, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit"
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_55 = load i64, ptr %15, align 8, !noundef !6
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_56 = load ptr, ptr %16, align 8, !nonnull !6
  br label %bb2.i

bb5.preheader:                                    ; preds = %bb21, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07f32e1415ee3e71E.exit"
  %_0.i.not.i29132 = icmp slt i32 %m, 0
  br i1 %_0.i.not.i29132, label %bb8.preheader, label %bb2.i30.lr.ph

bb2.i30.lr.ph:                                    ; preds = %bb5.preheader
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_67 = load i64, ptr %17, align 8, !noundef !6
  %_70.not = icmp eq i64 %_67, 0
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_68 = load ptr, ptr %18, align 8, !nonnull !6
  %19 = getelementptr inbounds nuw i8, ptr %_68, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %_68, i64 8
  br i1 %_70.not, label %panic16.invoke, label %bb2.i30

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb21
  %iter.sroa.0.0131 = phi i32 [ 0, %bb2.i.lr.ph ], [ %spec.select97, %bb21 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0131, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %21 = zext i1 %not._0.i3.i to i32
  %spec.select97 = add nuw nsw i32 %iter.sroa.0.0131, %21
  %_17 = zext nneg i32 %iter.sroa.0.0131 to i64
  %_58 = icmp ugt i64 %_55, %_17
  br i1 %_58, label %bb20, label %panic16.invoke

cleanup:                                          ; preds = %panic16.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb8.preheader:                                    ; preds = %bb24, %bb5.preheader
  %_0.i.not.i42136 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i42136, label %bb8.preheader.bb10_crit_edge, label %bb2.i43.lr.ph

bb8.preheader.bb10_crit_edge:                     ; preds = %bb8.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_78.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb10

bb2.i43.lr.ph:                                    ; preds = %bb8.preheader
  %_0.i.not.i56134 = icmp slt i32 %m, 1
  %23 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_84 = load ptr, ptr %23, align 8, !nonnull !6
  %24 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_83 = load i64, ptr %24, align 8
  br label %bb2.i43

bb2.i30:                                          ; preds = %bb2.i30.lr.ph, %bb24
  %iter1.sroa.0.0133 = phi i32 [ %spec.select98, %bb24 ], [ 0, %bb2.i30.lr.ph ]
  %_26 = zext nneg i32 %iter1.sroa.0.0133 to i64
  %_73 = load i64, ptr %19, align 8, !noundef !6
  %_76 = icmp ugt i64 %_73, %_26
  br i1 %_76, label %bb24, label %panic16.invoke

bb8.loopexit:                                     ; preds = %bb33, %bb2.i43
  %_0.i.not.i42 = icmp sgt i32 %spec.select100, %n
  %or.cond105 = select i1 %_0.i3.i44, i1 true, i1 %_0.i.not.i42
  br i1 %or.cond105, label %bb10, label %bb2.i43

bb2.i43:                                          ; preds = %bb2.i43.lr.ph, %bb8.loopexit
  %iter2.sroa.0.0137 = phi i32 [ 1, %bb2.i43.lr.ph ], [ %spec.select100, %bb8.loopexit ]
  %_0.i3.i44 = icmp sge i32 %iter2.sroa.0.0137, %n
  %not._0.i3.i44 = xor i1 %_0.i3.i44, true
  %25 = zext i1 %not._0.i3.i44 to i32
  %spec.select100 = add nuw nsw i32 %iter2.sroa.0.0137, %25
  br i1 %_0.i.not.i56134, label %bb8.loopexit, label %bb2.i57.lr.ph

bb2.i57.lr.ph:                                    ; preds = %bb2.i43
  %_43 = zext nneg i32 %iter2.sroa.0.0137 to i64
  %_42 = add nsw i64 %_43, -1
  %_86 = icmp ult i64 %_42, %_83
  %_41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_84, i64 %_42
  %26 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %_96 = icmp ugt i64 %_83, %_43
  %_47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_84, i64 %_43
  %28 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %_47, i64 16
  br i1 %_86, label %bb2.i57, label %panic16.invoke

bb10:                                             ; preds = %bb8.loopexit, %bb8.preheader.bb10_crit_edge
  %_78 = phi i64 [ %_78.pre, %bb8.preheader.bb10_crit_edge ], [ %_83, %bb8.loopexit ]
  %_81 = icmp ugt i64 %_78, %_8
  br i1 %_81, label %bb26, label %panic16.invoke

bb26:                                             ; preds = %bb10
  %30 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_79 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_79, i64 %_8
  %31 = getelementptr inbounds nuw i8, ptr %_52, i64 16
  %_115 = load i64, ptr %31, align 8, !noundef !6
  %_118 = icmp ugt i64 %_115, %_6
  br i1 %_118, label %bb34, label %panic16.invoke

bb34:                                             ; preds = %bb26
  %32 = getelementptr inbounds nuw i8, ptr %_52, i64 8
  %_116 = load ptr, ptr %32, align 8, !nonnull !6, !noundef !6
  %_51 = getelementptr inbounds nuw i32, ptr %_116, i64 %_6
  %_0 = load i32, ptr %_51, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb34, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %33, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i" ], [ 0, %bb34 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_79, i64 %_3.sroa.0.012.i.i.i
  %33 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %34 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %35 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %35, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %34, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %33, %_78
  br i1 %_7.i.i.i, label %bb4.i50, label %bb5.i.i.i

bb4.i50:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h4255cf1302b62c65E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i50
  %36 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_79, i64 noundef %36, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h84c19daef9c653e0E.exit": ; preds = %bb4.i50, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i57:                                          ; preds = %bb2.i57.lr.ph, %bb33
  %iter3.sroa.0.0135 = phi i32 [ %spec.select102, %bb33 ], [ 1, %bb2.i57.lr.ph ]
  %_0.i3.i58 = icmp sge i32 %iter3.sroa.0.0135, %m
  %not._0.i3.i58 = xor i1 %_0.i3.i58, true
  %37 = zext i1 %not._0.i3.i58 to i32
  %spec.select102 = add nuw nsw i32 %iter3.sroa.0.0135, %37
  %_44 = zext nneg i32 %iter3.sroa.0.0135 to i64
  %_88 = load i64, ptr %26, align 8, !noundef !6
  %_91 = icmp ugt i64 %_88, %_44
  br i1 %_91, label %bb29, label %panic16.invoke

bb29:                                             ; preds = %bb2.i57
  %_89 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw i32, ptr %_89, i64 %_44
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  br i1 %_96, label %bb30, label %panic16.invoke

bb30:                                             ; preds = %bb29
  %_48 = add nsw i64 %_44, -1
  %_99 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_98 = load i64, ptr %29, align 8, !noundef !6
  %_101 = icmp ult i64 %_48, %_98
  br i1 %_101, label %bb31, label %panic16.invoke

bb31:                                             ; preds = %bb30
  %_113 = icmp ugt i64 %_98, %_44
  br i1 %_113, label %bb33, label %panic16.invoke

bb33:                                             ; preds = %bb31
  %_46 = getelementptr inbounds nuw i32, ptr %_99, i64 %_48
  %_45 = load i32, ptr %_46, align 4, !noundef !6
  %_49 = getelementptr inbounds nuw i32, ptr %_99, i64 %_44
  %38 = add i32 %_45, %_39
  store i32 %38, ptr %_49, align 4
  %_0.i.not.i56 = icmp sgt i32 %spec.select102, %m
  %or.cond106 = select i1 %_0.i3.i58, i1 true, i1 %_0.i.not.i56
  br i1 %or.cond106, label %bb8.loopexit, label %bb2.i57

bb24:                                             ; preds = %bb2.i30
  %_0.i3.i31 = icmp sge i32 %iter1.sroa.0.0133, %m
  %not._0.i3.i31 = xor i1 %_0.i3.i31, true
  %39 = zext i1 %not._0.i3.i31 to i32
  %spec.select98 = add nuw nsw i32 %iter1.sroa.0.0133, %39
  %_74 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_24 = getelementptr inbounds nuw i32, ptr %_74, i64 %_26
  store i32 1, ptr %_24, align 4
  %_0.i.not.i29 = icmp sgt i32 %spec.select98, %m
  %or.cond104 = select i1 %_0.i3.i31, i1 true, i1 %_0.i.not.i29
  br i1 %or.cond104, label %bb8.preheader, label %bb2.i30

bb20:                                             ; preds = %bb2.i
  %_16 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_56, i64 %_17
  %40 = getelementptr inbounds nuw i8, ptr %_16, i64 16
  %_61 = load i64, ptr %40, align 8, !noundef !6
  %_64.not = icmp eq i64 %_61, 0
  br i1 %_64.not, label %panic16.invoke, label %bb21

bb21:                                             ; preds = %bb20
  %41 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %_62 = load ptr, ptr %41, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_62, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select97, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

panic16.invoke:                                   ; preds = %bb20, %bb2.i, %bb2.i30, %bb2.i57.lr.ph, %bb31, %bb30, %bb29, %bb2.i57, %bb2.i30.lr.ph, %bb26, %bb10
  %42 = phi i64 [ %_8, %bb10 ], [ %_6, %bb26 ], [ 0, %bb2.i30.lr.ph ], [ %_44, %bb2.i57 ], [ %_43, %bb29 ], [ %_48, %bb30 ], [ %_44, %bb31 ], [ %_42, %bb2.i57.lr.ph ], [ %_26, %bb2.i30 ], [ %_17, %bb2.i ], [ 0, %bb20 ]
  %43 = phi i64 [ %_78, %bb10 ], [ %_115, %bb26 ], [ 0, %bb2.i30.lr.ph ], [ %_88, %bb2.i57 ], [ %_83, %bb29 ], [ %_98, %bb30 ], [ %_98, %bb31 ], [ %_83, %bb2.i57.lr.ph ], [ %_73, %bb2.i30 ], [ %_55, %bb2.i ], [ 0, %bb20 ]
  %44 = phi ptr [ @alloc_e29ec0490c21d6b45df819bbed447e74, %bb10 ], [ @alloc_1e3fe3fb240b8243c463d00c90685121, %bb26 ], [ @alloc_8e38f9ee458ecfcd2d4fa8978752790c, %bb2.i30.lr.ph ], [ @alloc_54b8a6caa101901de1d6507246f6e926, %bb2.i57 ], [ @alloc_bc774ccd5f2c9cc2e663d8601b0202d3, %bb29 ], [ @alloc_f226291cd7a3254b36d4c75a86b8fb82, %bb30 ], [ @alloc_8f4327a1f61dad9ee6133221c1332f28, %bb31 ], [ @alloc_e2c2cdf0b64d7a03399a579d692d2626, %bb2.i57.lr.ph ], [ @alloc_ee53bdc27602b3598d85d62c8aa04e77, %bb2.i30 ], [ @alloc_cc8ccd59d7e1ec9577ca60017538e5d2, %bb2.i ], [ @alloc_c75e0815adb627be99df549d0eb76a5f, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %42, i64 noundef %43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %44) #21
          to label %panic16.cont unwind label %cleanup

panic16.cont:                                     ; preds = %panic16.invoke
  unreachable
}
