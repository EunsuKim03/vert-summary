define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit": ; preds = %start
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_4, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_4, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb2.i.i.i3.i.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_4, ptr %v.i, align 8, !noalias !1077
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb2.i.i.i3.i.i.i:                                 ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1098
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 10, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %6, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 10, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 10, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit": ; preds = %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_6 = icmp eq i32 %n, 1
  br i1 %_6, label %bb1, label %bb3.preheader

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_70 = load i64, ptr %13, align 8, !noundef !6
  %_73 = icmp ugt i64 %_70, 1
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_71 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %_71, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %_71, i64 32
  br i1 %_73, label %bb2.i, label %panic22.invoke

bb1:                                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_5.i.i = load ptr, ptr %17, align 8, !alias.scope !1149, !nonnull !6, !noundef !6
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i.i = load i64, ptr %18, align 8, !alias.scope !1149, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i35, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb1, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %19, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i" ], [ 0, %bb1 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %19 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1165, !noalias !1168, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %20 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %21 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %21, align 8, !alias.scope !1165, !noalias !1168, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1170
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %19, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i35, label %bb5.i.i.i

bb4.i35:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i", %bb1
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1171, !noalias !1180, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb24, label %bb24.sink.split

bb7.preheader:                                    ; preds = %bb31
  %_0.i.not.i42200 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i42200, label %bb19.preheader, label %bb2.i43

bb2.i:                                            ; preds = %bb3.preheader, %bb31
  %iter.sroa.0.0198 = phi i64 [ %spec.select133, %bb31 ], [ 0, %bb3.preheader ]
  %_76 = load i64, ptr %15, align 8, !noundef !6
  %_79 = icmp ult i64 %iter.sroa.0.0198, %_76
  br i1 %_79, label %bb31, label %panic22.invoke

cleanup:                                          ; preds = %panic22.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb19.preheader:                                   ; preds = %bb18.thread, %bb7.preheader
  %_160 = icmp ugt i64 %_70, %_5
  %_67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_71, i64 %_5
  %23 = getelementptr inbounds nuw i8, ptr %_67, i64 8
  br i1 %_160, label %bb19.preheader.split, label %panic22.invoke

bb19.preheader.split:                             ; preds = %bb19.preheader
  %24 = getelementptr inbounds nuw i8, ptr %_67, i64 16
  %_162 = load i64, ptr %24, align 8, !noundef !6
  br label %bb2.i55

bb2.i43:                                          ; preds = %bb7.preheader, %bb18.thread
  %iter1.sroa.0.0201 = phi i32 [ %spec.select134, %bb18.thread ], [ 2, %bb7.preheader ]
  %_0.i3.i44 = icmp sge i32 %iter1.sroa.0.0201, %n
  %not._0.i3.i44 = xor i1 %_0.i3.i44, true
  %25 = zext i1 %not._0.i3.i44 to i32
  %spec.select134 = add nuw nsw i32 %iter1.sroa.0.0201, %25
  %_50 = add nsw i32 %iter1.sroa.0.0201, -1
  %_49 = sext i32 %_50 to i64
  %_128 = icmp ugt i64 %_70, %_49
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_71, i64 %_49
  %26 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_58 = zext nneg i32 %iter1.sroa.0.0201 to i64
  %_149 = icmp ugt i64 %_70, %_58
  %_57 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_71, i64 %_58
  %28 = getelementptr inbounds nuw i8, ptr %_57, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  br i1 %_128, label %bb34, label %panic22.invoke

bb2.i55:                                          ; preds = %bb19.preheader.split, %bb50
  %sum.sroa.0.0203 = phi i32 [ 0, %bb19.preheader.split ], [ %34, %bb50 ]
  %iter3.sroa.0.0202 = phi i64 [ 1, %bb19.preheader.split ], [ %spec.select136, %bb50 ]
  %_165 = icmp ult i64 %iter3.sroa.0.0202, %_162
  br i1 %_165, label %bb50, label %panic22.invoke

bb5.i.i.i66.preheader:                            ; preds = %bb50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  br label %bb5.i.i.i66

bb5.i.i.i66:                                      ; preds = %bb5.i.i.i66.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73"
  %_3.sroa.0.012.i.i.i67 = phi i64 [ %30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73" ], [ 0, %bb5.i.i.i66.preheader ]
  %_6.i.i.i68 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_71, i64 %_3.sroa.0.012.i.i.i67
  %30 = add nuw i64 %_3.sroa.0.012.i.i.i67, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %self1.i.i.i.i1.i.i.i.i69 = load i64, ptr %_6.i.i.i68, align 8, !range !22, !alias.scope !1200, !noalias !1203, !noundef !6
  %_6.i.i.i.i2.i.i.i.i70 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i69, 0
  br i1 %_6.i.i.i.i2.i.i.i.i70, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73", label %bb2.i.i.i3.i.i.i.i71

bb2.i.i.i3.i.i.i.i71:                             ; preds = %bb5.i.i.i66
  %31 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i69, 2
  %32 = getelementptr inbounds nuw i8, ptr %_6.i.i.i68, i64 8
  %self3.i.i.i.i4.i.i.i.i72 = load ptr, ptr %32, align 8, !alias.scope !1200, !noalias !1203, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i72, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1207
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73": ; preds = %bb2.i.i.i3.i.i.i.i71, %bb5.i.i.i66
  %_7.i.i.i74 = icmp eq i64 %30, %_70
  br i1 %_7.i.i.i74, label %bb4.i75, label %bb5.i.i.i66

bb4.i75:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i73"
  %self1.i.i.i.i1.i76 = load i64, ptr %dp, align 8, !range !22, !alias.scope !1208, !noalias !1217, !noundef !6
  %_6.i.i.i.i2.i77 = icmp eq i64 %self1.i.i.i.i1.i76, 0
  br i1 %_6.i.i.i.i2.i77, label %bb24, label %bb24.sink.split

bb24.sink.split:                                  ; preds = %bb4.i75, %bb4.i35
  %self1.i.i.i.i1.i76.sink = phi i64 [ %self1.i.i.i.i1.i, %bb4.i35 ], [ %self1.i.i.i.i1.i76, %bb4.i75 ]
  %_71.sink = phi ptr [ %_5.i.i, %bb4.i35 ], [ %_71, %bb4.i75 ]
  %sum.sroa.0.1.ph = phi i32 [ 10, %bb4.i35 ], [ %34, %bb4.i75 ]
  %33 = mul nuw i64 %self1.i.i.i.i1.i76.sink, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_71.sink, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !6
  br label %bb24

bb24:                                             ; preds = %bb24.sink.split, %bb4.i75, %bb4.i35
  %sum.sroa.0.1 = phi i32 [ 10, %bb4.i35 ], [ %34, %bb4.i75 ], [ %sum.sroa.0.1.ph, %bb24.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %sum.sroa.0.1

bb50:                                             ; preds = %bb2.i55
  %_0.i3.i56 = icmp eq i64 %iter3.sroa.0.0202, 9
  %_0.i4.i61 = add nuw nsw i64 %iter3.sroa.0.0202, 1
  %spec.select136 = select i1 %_0.i3.i56, i64 9, i64 %_0.i4.i61
  %_163 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_66 = getelementptr inbounds nuw i32, ptr %_163, i64 %iter3.sroa.0.0202
  %_65 = load i32, ptr %_66, align 4, !noundef !6
  %34 = add i32 %_65, %sum.sroa.0.0203
  %_0.i.not.i54 = icmp ugt i64 %spec.select136, 9
  %or.cond139 = select i1 %_0.i3.i56, i1 true, i1 %_0.i.not.i54
  br i1 %or.cond139, label %bb5.i.i.i66.preheader, label %bb2.i55

bb38:                                             ; preds = %bb47.8
  %_108 = load i64, ptr %27, align 8, !noundef !6
  %_111 = icmp ugt i64 %_108, 8
  br i1 %_111, label %bb39, label %panic22.invoke

bb39:                                             ; preds = %bb38
  %_109 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i8, ptr %_109, i64 32
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  br i1 %_149, label %bb40, label %panic22.invoke

bb40:                                             ; preds = %bb39
  %_120 = load i64, ptr %28, align 8, !noundef !6
  %_123 = icmp ugt i64 %_120, 9
  br i1 %_123, label %bb18.thread, label %panic22.invoke

bb18.thread:                                      ; preds = %bb40
  %_121 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_43 = getelementptr inbounds nuw i8, ptr %_121, i64 36
  store i32 %_37, ptr %_43, align 4
  %_0.i.not.i42 = icmp sgt i32 %spec.select134, %n
  %or.cond138 = select i1 %_0.i3.i44, i1 true, i1 %_0.i.not.i42
  br i1 %or.cond138, label %bb19.preheader, label %bb2.i43

bb42.1:                                           ; preds = %bb37
  %_131.1 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.1 = load i64, ptr %27, align 8, !noundef !6
  %_133.1.not = icmp eq i64 %_130.1, 0
  br i1 %_133.1.not, label %panic22.invoke, label %bb43.1

bb43.1:                                           ; preds = %bb42.1
  %_46.1 = load i32, ptr %_131.1, align 4, !noundef !6
  %_143.1 = icmp ugt i64 %_130.1, 2
  br i1 %_143.1, label %bb45.1, label %panic22.invoke

bb45.1:                                           ; preds = %bb43.1
  %_53.1 = getelementptr inbounds nuw i8, ptr %_131.1, i64 8
  %_52.1 = load i32, ptr %_53.1, align 4, !noundef !6
  br i1 %_149, label %bb46.1, label %panic22.invoke

bb46.1:                                           ; preds = %bb45.1
  %_152.1 = load i64, ptr %28, align 8, !noundef !6
  %_155.1 = icmp ugt i64 %_152.1, 1
  br i1 %_155.1, label %bb47.1, label %panic22.invoke

bb47.1:                                           ; preds = %bb46.1
  %_153.1 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.1 = getelementptr inbounds nuw i8, ptr %_153.1, i64 4
  %35 = add i32 %_52.1, %_46.1
  store i32 %35, ptr %_56.1, align 4
  br i1 %_128, label %bb42.2, label %panic22.invoke

bb42.2:                                           ; preds = %bb47.1
  %_131.2 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.2 = load i64, ptr %27, align 8, !noundef !6
  %_133.2 = icmp ugt i64 %_130.2, 1
  br i1 %_133.2, label %bb43.2, label %panic22.invoke

bb43.2:                                           ; preds = %bb42.2
  %_47.2 = getelementptr inbounds nuw i8, ptr %_131.2, i64 4
  %_46.2 = load i32, ptr %_47.2, align 4, !noundef !6
  %_143.2 = icmp ugt i64 %_130.2, 3
  br i1 %_143.2, label %bb45.2, label %panic22.invoke

bb45.2:                                           ; preds = %bb43.2
  %_53.2 = getelementptr inbounds nuw i8, ptr %_131.2, i64 12
  %_52.2 = load i32, ptr %_53.2, align 4, !noundef !6
  br i1 %_149, label %bb46.2, label %panic22.invoke

bb46.2:                                           ; preds = %bb45.2
  %_152.2 = load i64, ptr %28, align 8, !noundef !6
  %_155.2 = icmp ugt i64 %_152.2, 2
  br i1 %_155.2, label %bb47.2, label %panic22.invoke

bb47.2:                                           ; preds = %bb46.2
  %_153.2 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.2 = getelementptr inbounds nuw i8, ptr %_153.2, i64 8
  %36 = add i32 %_52.2, %_46.2
  store i32 %36, ptr %_56.2, align 4
  br i1 %_128, label %bb42.3, label %panic22.invoke

bb42.3:                                           ; preds = %bb47.2
  %_131.3 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.3 = load i64, ptr %27, align 8, !noundef !6
  %_133.3 = icmp ugt i64 %_130.3, 2
  br i1 %_133.3, label %bb43.3, label %panic22.invoke

bb43.3:                                           ; preds = %bb42.3
  %_47.3 = getelementptr inbounds nuw i8, ptr %_131.3, i64 8
  %_46.3 = load i32, ptr %_47.3, align 4, !noundef !6
  %_143.3 = icmp ugt i64 %_130.3, 4
  br i1 %_143.3, label %bb45.3, label %panic22.invoke

bb45.3:                                           ; preds = %bb43.3
  %_53.3 = getelementptr inbounds nuw i8, ptr %_131.3, i64 16
  %_52.3 = load i32, ptr %_53.3, align 4, !noundef !6
  br i1 %_149, label %bb46.3, label %panic22.invoke

bb46.3:                                           ; preds = %bb45.3
  %_152.3 = load i64, ptr %28, align 8, !noundef !6
  %_155.3 = icmp ugt i64 %_152.3, 3
  br i1 %_155.3, label %bb47.3, label %panic22.invoke

bb47.3:                                           ; preds = %bb46.3
  %_153.3 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.3 = getelementptr inbounds nuw i8, ptr %_153.3, i64 12
  %37 = add i32 %_52.3, %_46.3
  store i32 %37, ptr %_56.3, align 4
  br i1 %_128, label %bb42.4, label %panic22.invoke

bb42.4:                                           ; preds = %bb47.3
  %_131.4 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.4 = load i64, ptr %27, align 8, !noundef !6
  %_133.4 = icmp ugt i64 %_130.4, 3
  br i1 %_133.4, label %bb43.4, label %panic22.invoke

bb43.4:                                           ; preds = %bb42.4
  %_47.4 = getelementptr inbounds nuw i8, ptr %_131.4, i64 12
  %_46.4 = load i32, ptr %_47.4, align 4, !noundef !6
  %_143.4 = icmp ugt i64 %_130.4, 5
  br i1 %_143.4, label %bb45.4, label %panic22.invoke

bb45.4:                                           ; preds = %bb43.4
  %_53.4 = getelementptr inbounds nuw i8, ptr %_131.4, i64 20
  %_52.4 = load i32, ptr %_53.4, align 4, !noundef !6
  br i1 %_149, label %bb46.4, label %panic22.invoke

bb46.4:                                           ; preds = %bb45.4
  %_152.4 = load i64, ptr %28, align 8, !noundef !6
  %_155.4 = icmp ugt i64 %_152.4, 4
  br i1 %_155.4, label %bb47.4, label %panic22.invoke

bb47.4:                                           ; preds = %bb46.4
  %_153.4 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.4 = getelementptr inbounds nuw i8, ptr %_153.4, i64 16
  %38 = add i32 %_52.4, %_46.4
  store i32 %38, ptr %_56.4, align 4
  br i1 %_128, label %bb42.5, label %panic22.invoke

bb42.5:                                           ; preds = %bb47.4
  %_131.5 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.5 = load i64, ptr %27, align 8, !noundef !6
  %_133.5 = icmp ugt i64 %_130.5, 4
  br i1 %_133.5, label %bb43.5, label %panic22.invoke

bb43.5:                                           ; preds = %bb42.5
  %_47.5 = getelementptr inbounds nuw i8, ptr %_131.5, i64 16
  %_46.5 = load i32, ptr %_47.5, align 4, !noundef !6
  %_143.5 = icmp ugt i64 %_130.5, 6
  br i1 %_143.5, label %bb45.5, label %panic22.invoke

bb45.5:                                           ; preds = %bb43.5
  %_53.5 = getelementptr inbounds nuw i8, ptr %_131.5, i64 24
  %_52.5 = load i32, ptr %_53.5, align 4, !noundef !6
  br i1 %_149, label %bb46.5, label %panic22.invoke

bb46.5:                                           ; preds = %bb45.5
  %_152.5 = load i64, ptr %28, align 8, !noundef !6
  %_155.5 = icmp ugt i64 %_152.5, 5
  br i1 %_155.5, label %bb47.5, label %panic22.invoke

bb47.5:                                           ; preds = %bb46.5
  %_153.5 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.5 = getelementptr inbounds nuw i8, ptr %_153.5, i64 20
  %39 = add i32 %_52.5, %_46.5
  store i32 %39, ptr %_56.5, align 4
  br i1 %_128, label %bb42.6, label %panic22.invoke

bb42.6:                                           ; preds = %bb47.5
  %_131.6 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.6 = load i64, ptr %27, align 8, !noundef !6
  %_133.6 = icmp ugt i64 %_130.6, 5
  br i1 %_133.6, label %bb43.6, label %panic22.invoke

bb43.6:                                           ; preds = %bb42.6
  %_47.6 = getelementptr inbounds nuw i8, ptr %_131.6, i64 20
  %_46.6 = load i32, ptr %_47.6, align 4, !noundef !6
  %_143.6 = icmp ugt i64 %_130.6, 7
  br i1 %_143.6, label %bb45.6, label %panic22.invoke

bb45.6:                                           ; preds = %bb43.6
  %_53.6 = getelementptr inbounds nuw i8, ptr %_131.6, i64 28
  %_52.6 = load i32, ptr %_53.6, align 4, !noundef !6
  br i1 %_149, label %bb46.6, label %panic22.invoke

bb46.6:                                           ; preds = %bb45.6
  %_152.6 = load i64, ptr %28, align 8, !noundef !6
  %_155.6 = icmp ugt i64 %_152.6, 6
  br i1 %_155.6, label %bb47.6, label %panic22.invoke

bb47.6:                                           ; preds = %bb46.6
  %_153.6 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.6 = getelementptr inbounds nuw i8, ptr %_153.6, i64 24
  %40 = add i32 %_52.6, %_46.6
  store i32 %40, ptr %_56.6, align 4
  br i1 %_128, label %bb42.7, label %panic22.invoke

bb42.7:                                           ; preds = %bb47.6
  %_131.7 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.7 = load i64, ptr %27, align 8, !noundef !6
  %_133.7 = icmp ugt i64 %_130.7, 6
  br i1 %_133.7, label %bb43.7, label %panic22.invoke

bb43.7:                                           ; preds = %bb42.7
  %_47.7 = getelementptr inbounds nuw i8, ptr %_131.7, i64 24
  %_46.7 = load i32, ptr %_47.7, align 4, !noundef !6
  %_143.7 = icmp ugt i64 %_130.7, 8
  br i1 %_143.7, label %bb45.7, label %panic22.invoke

bb45.7:                                           ; preds = %bb43.7
  %_53.7 = getelementptr inbounds nuw i8, ptr %_131.7, i64 32
  %_52.7 = load i32, ptr %_53.7, align 4, !noundef !6
  br i1 %_149, label %bb46.7, label %panic22.invoke

bb46.7:                                           ; preds = %bb45.7
  %_152.7 = load i64, ptr %28, align 8, !noundef !6
  %_155.7 = icmp ugt i64 %_152.7, 7
  br i1 %_155.7, label %bb47.7, label %panic22.invoke

bb47.7:                                           ; preds = %bb46.7
  %_153.7 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.7 = getelementptr inbounds nuw i8, ptr %_153.7, i64 28
  %41 = add i32 %_52.7, %_46.7
  store i32 %41, ptr %_56.7, align 4
  br i1 %_128, label %bb42.8, label %panic22.invoke

bb42.8:                                           ; preds = %bb47.7
  %_131.8 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_130.8 = load i64, ptr %27, align 8, !noundef !6
  %_133.8 = icmp ugt i64 %_130.8, 7
  br i1 %_133.8, label %bb43.8, label %panic22.invoke

bb43.8:                                           ; preds = %bb42.8
  %_47.8 = getelementptr inbounds nuw i8, ptr %_131.8, i64 28
  %_46.8 = load i32, ptr %_47.8, align 4, !noundef !6
  %_143.8 = icmp ugt i64 %_130.8, 9
  br i1 %_143.8, label %bb45.8, label %panic22.invoke

bb45.8:                                           ; preds = %bb43.8
  %_53.8 = getelementptr inbounds nuw i8, ptr %_131.8, i64 36
  %_52.8 = load i32, ptr %_53.8, align 4, !noundef !6
  br i1 %_149, label %bb46.8, label %panic22.invoke

bb46.8:                                           ; preds = %bb45.8
  %_152.8 = load i64, ptr %28, align 8, !noundef !6
  %_155.8 = icmp ugt i64 %_152.8, 8
  br i1 %_155.8, label %bb47.8, label %panic22.invoke

bb47.8:                                           ; preds = %bb46.8
  %_153.8 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_56.8 = getelementptr inbounds nuw i8, ptr %_153.8, i64 32
  %42 = add i32 %_52.8, %_46.8
  store i32 %42, ptr %_56.8, align 4
  br i1 %_128, label %bb38, label %panic22.invoke

bb34:                                             ; preds = %bb2.i43
  %_86 = load i64, ptr %27, align 8, !noundef !6
  %_89 = icmp ugt i64 %_86, 1
  br i1 %_89, label %bb35, label %panic22.invoke

bb35:                                             ; preds = %bb34
  %_87 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw i8, ptr %_87, i64 4
  %_27 = load i32, ptr %_28, align 4, !noundef !6
  br i1 %_149, label %bb36, label %panic22.invoke

bb36:                                             ; preds = %bb35
  %_98 = load i64, ptr %28, align 8, !noundef !6
  %_101.not = icmp eq i64 %_98, 0
  br i1 %_101.not, label %panic22.invoke, label %bb37

bb37:                                             ; preds = %bb36
  %_99 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  store i32 %_27, ptr %_99, align 4
  br i1 %_128, label %bb42.1, label %panic22.invoke

bb31:                                             ; preds = %bb2.i
  %_0.i3.i = icmp eq i64 %iter.sroa.0.0198, 9
  %_0.i4.i = add nuw nsw i64 %iter.sroa.0.0198, 1
  %spec.select133 = select i1 %_0.i3.i, i64 9, i64 %_0.i4.i
  %_77 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_13 = getelementptr inbounds nuw i32, ptr %_77, i64 %iter.sroa.0.0198
  store i32 1, ptr %_13, align 4
  %_0.i.not.i = icmp ugt i64 %spec.select133, 9
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb7.preheader, label %bb2.i

panic22.invoke:                                   ; preds = %bb2.i, %bb40, %bb39, %bb38, %bb47.8, %bb36, %bb35, %bb34, %bb2.i43, %bb37, %bb42.1, %bb43.1, %bb45.1, %bb46.1, %bb47.1, %bb42.2, %bb43.2, %bb45.2, %bb46.2, %bb47.2, %bb42.3, %bb43.3, %bb45.3, %bb46.3, %bb47.3, %bb42.4, %bb43.4, %bb45.4, %bb46.4, %bb47.4, %bb42.5, %bb43.5, %bb45.5, %bb46.5, %bb47.5, %bb42.6, %bb43.6, %bb45.6, %bb46.6, %bb47.6, %bb42.7, %bb43.7, %bb45.7, %bb46.7, %bb47.7, %bb42.8, %bb43.8, %bb45.8, %bb46.8, %bb2.i55, %bb3.preheader, %bb19.preheader
  %43 = phi i64 [ %_5, %bb19.preheader ], [ 1, %bb3.preheader ], [ %iter3.sroa.0.0202, %bb2.i55 ], [ %_49, %bb2.i43 ], [ 1, %bb34 ], [ %_58, %bb35 ], [ 0, %bb36 ], [ %_49, %bb37 ], [ 0, %bb42.1 ], [ 2, %bb43.1 ], [ %_58, %bb45.1 ], [ 1, %bb46.1 ], [ %_49, %bb47.1 ], [ 1, %bb42.2 ], [ 3, %bb43.2 ], [ %_58, %bb45.2 ], [ 2, %bb46.2 ], [ %_49, %bb47.2 ], [ 2, %bb42.3 ], [ 4, %bb43.3 ], [ %_58, %bb45.3 ], [ 3, %bb46.3 ], [ %_49, %bb47.3 ], [ 3, %bb42.4 ], [ 5, %bb43.4 ], [ %_58, %bb45.4 ], [ 4, %bb46.4 ], [ %_49, %bb47.4 ], [ 4, %bb42.5 ], [ 6, %bb43.5 ], [ %_58, %bb45.5 ], [ 5, %bb46.5 ], [ %_49, %bb47.5 ], [ 5, %bb42.6 ], [ 7, %bb43.6 ], [ %_58, %bb45.6 ], [ 6, %bb46.6 ], [ %_49, %bb47.6 ], [ 6, %bb42.7 ], [ 8, %bb43.7 ], [ %_58, %bb45.7 ], [ 7, %bb46.7 ], [ %_49, %bb47.7 ], [ 7, %bb42.8 ], [ 9, %bb43.8 ], [ %_58, %bb45.8 ], [ 8, %bb46.8 ], [ %_49, %bb47.8 ], [ 8, %bb38 ], [ %_58, %bb39 ], [ 9, %bb40 ], [ %iter.sroa.0.0198, %bb2.i ]
  %44 = phi i64 [ %_70, %bb19.preheader ], [ %_70, %bb3.preheader ], [ %_162, %bb2.i55 ], [ %_70, %bb2.i43 ], [ %_86, %bb34 ], [ %_70, %bb35 ], [ 0, %bb36 ], [ %_70, %bb37 ], [ %_130.1, %bb42.1 ], [ %_130.1, %bb43.1 ], [ %_70, %bb45.1 ], [ %_152.1, %bb46.1 ], [ %_70, %bb47.1 ], [ %_130.2, %bb42.2 ], [ %_130.2, %bb43.2 ], [ %_70, %bb45.2 ], [ %_152.2, %bb46.2 ], [ %_70, %bb47.2 ], [ %_130.3, %bb42.3 ], [ %_130.3, %bb43.3 ], [ %_70, %bb45.3 ], [ %_152.3, %bb46.3 ], [ %_70, %bb47.3 ], [ %_130.4, %bb42.4 ], [ %_130.4, %bb43.4 ], [ %_70, %bb45.4 ], [ %_152.4, %bb46.4 ], [ %_70, %bb47.4 ], [ %_130.5, %bb42.5 ], [ %_130.5, %bb43.5 ], [ %_70, %bb45.5 ], [ %_152.5, %bb46.5 ], [ %_70, %bb47.5 ], [ %_130.6, %bb42.6 ], [ %_130.6, %bb43.6 ], [ %_70, %bb45.6 ], [ %_152.6, %bb46.6 ], [ %_70, %bb47.6 ], [ %_130.7, %bb42.7 ], [ %_130.7, %bb43.7 ], [ %_70, %bb45.7 ], [ %_152.7, %bb46.7 ], [ %_70, %bb47.7 ], [ %_130.8, %bb42.8 ], [ %_130.8, %bb43.8 ], [ %_70, %bb45.8 ], [ %_152.8, %bb46.8 ], [ %_70, %bb47.8 ], [ %_108, %bb38 ], [ %_70, %bb39 ], [ %_120, %bb40 ], [ %_76, %bb2.i ]
  %45 = phi ptr [ @alloc_572d1cbf4bd6a83e0e94990f1b12c353, %bb19.preheader ], [ @alloc_51e018f0a9df31b591101443d55f9e50, %bb3.preheader ], [ @alloc_f762c57be3ac5fd7df9f00391c9a5aa5, %bb2.i55 ], [ @alloc_1d7d8de1550b39dff9b4dc3a854792f5, %bb2.i43 ], [ @alloc_bafed1dfeeea59162dc9b1cf8f6d62ac, %bb34 ], [ @alloc_8a5a0126c115f6f2ff2b2a1cecd70135, %bb35 ], [ @alloc_5ebc3690d0bc6662087295039269152f, %bb36 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb37 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.1 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.1 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.1 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.1 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.1 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.2 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.2 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.2 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.2 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.2 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.3 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.3 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.3 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.3 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.3 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.4 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.4 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.4 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.4 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.4 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.5 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.5 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.5 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.5 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.5 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.6 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.6 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.6 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.6 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.6 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.7 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.7 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.7 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.7 ], [ @alloc_51e9aa183ac91d09651e4a3978151919, %bb47.7 ], [ @alloc_0778e43b00b900b737046bb117059600, %bb42.8 ], [ @alloc_84d04051fb3d8bba67e79699f63ed304, %bb43.8 ], [ @alloc_3cb867d29975c190d3c65b6f7fa592e9, %bb45.8 ], [ @alloc_557aaf6de33aacb10eaff0e067b83eea, %bb46.8 ], [ @alloc_3f25a1d7bb9d51cfabbb017863e9617e, %bb47.8 ], [ @alloc_a0fe5d8a83832ba62960089d3abb56f9, %bb38 ], [ @alloc_394e54222eed415fc70c502808323762, %bb39 ], [ @alloc_64020b5dd5eea7be84911ab6ba526079, %bb40 ], [ @alloc_a4e825c8ab6c98c9148ac7917a39a04d, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #21
          to label %panic22.cont unwind label %cleanup

panic22.cont:                                     ; preds = %panic22.invoke
  unreachable
}
