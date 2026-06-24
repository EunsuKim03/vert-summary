define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %p = alloca [8 x i8], align 8
  store i64 %0, ptr %p, align 8
  %_5 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nuw nsw i64 %_5, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %3 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_5, ptr %v.i, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %3, ptr %5, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214", label %bb3.i.i.i.i.i.i

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214": ; preds = %bb1.i.i
  store i64 %_5, ptr %3, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i216 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i216, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i217, align 8, !noalias !1087
  br label %panic.sink.split

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i33
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i33 ], [ %3, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i33 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %9, %bb3.i3.i33 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1088
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1088
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i.i.i.i, label %bb3.i3.i33

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1098

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread": ; preds = %bb17.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1099
  br label %panic.sink.split

bb3.i3.i33:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %7, ptr nonnull readonly align 4 %1, i64 %_21.0.i.i.i, i1 false), !noalias !1102
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1098
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %7, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %9 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_5
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %6, align 8, !alias.scope !1084, !noalias !1103
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1108
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf55ccbbfd920f6adE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i34, %bb2.i.i.i3.i, %cleanup1.body.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %10, %cleanup1.body.i ], [ %11, %bb2.i.i.i3.i.i ], [ %lpad.phi233, %bb2.i.i.i3.i ], [ %lpad.phi233, %bb4.i34 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1117
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit": ; preds = %bb3.i3.i33
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %1, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_56123 = icmp sgt i32 %n, 1
  br i1 %_56123, label %bb3.preheader, label %bb37

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit"
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3

bb5.preheader:                                    ; preds = %bb31
  %_75131.not = icmp eq i32 %n, 2
  br i1 %_75131.not, label %bb37, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %bb5.preheader
  %_16 = add nuw i32 %n, 1
  %12 = add nsw i32 %n, -2
  br label %bb6

bb3:                                              ; preds = %bb3.preheader, %bb31
  %indvars.iv194 = phi i64 [ 1, %bb3.preheader ], [ %indvars.iv.next195, %bb31 ]
  %_10 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %indvars.iv194
  %13 = getelementptr inbounds nuw i8, ptr %_10, i64 16
  %_71 = load i64, ptr %13, align 8, !noundef !6
  %_74 = icmp ugt i64 %_71, %indvars.iv194
  br i1 %_74, label %bb31, label %panic20.invoke

bb5.loopexit:                                     ; preds = %bb8.loopexit, %bb6
  %_75 = icmp slt i32 %iter1.sroa.0.1134, %n
  %14 = zext i1 %_75 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1134, %14
  %indvars.iv.next203 = add nuw nsw i32 %indvars.iv202, 1
  %exitcond206.not = icmp eq i32 %indvars.iv202, %12
  br i1 %exitcond206.not, label %bb37, label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb5.loopexit
  %indvars.iv202 = phi i32 [ 1, %bb6.lr.ph ], [ %indvars.iv.next203, %bb5.loopexit ]
  %iter1.sroa.0.1134 = phi i32 [ 3, %bb6.lr.ph ], [ %iter1.sroa.0.1, %bb5.loopexit ]
  %iter1.sroa.0.0133 = phi i32 [ 2, %bb6.lr.ph ], [ %iter1.sroa.0.1134, %bb5.loopexit ]
  %iter4 = sub i32 %_16, %iter1.sroa.0.0133
  %invariant.op = add nsw i32 %iter1.sroa.0.0133, -1
  %_87127 = icmp sgt i32 %iter4, 1
  br i1 %_87127, label %bb9, label %bb5.loopexit

bb37:                                             ; preds = %bb5.loopexit, %bb5.preheader, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit"
  %_55 = add nsw i64 %_5, -1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %_156 = load i64, ptr %15, align 8, !noundef !6
  %_159 = icmp ult i64 %_55, %_156
  br i1 %_159, label %bb58, label %panic6.invoke

panic.sink.split:                                 ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214"
  %_21.0.i.i.i.i6165213222242.ph = phi i64 [ %_21.0.i.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214" ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread" ]
  %_4.sroa.10.0.i.i69210223241.ph = phi ptr [ %3, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread214" ], [ inttoptr (i64 8 to ptr), %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e61ab1cb5b0ea0dE.exit.thread" ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bcb49e920a3ba87d9e484cc33a98c524) #21
          to label %unreachable unwind label %cleanup

cleanup.thread:                                   ; preds = %panic6.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic20.invoke, %panic.sink.split
  %_21.0.i.i.i.i6165212.ph224 = phi i64 [ %_21.0.i.i.i.i6165213222242.ph, %panic.sink.split ], [ %_21.0.i.i.i.i, %panic20.invoke ]
  %_4.sroa.10.0.i.i69211.ph225 = phi ptr [ %_4.sroa.10.0.i.i69210223241.ph, %panic.sink.split ], [ %3, %panic20.invoke ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  br i1 %_8.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %lpad.phi233 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %_4.sroa.10.0.i.i69211231 = phi ptr [ %3, %cleanup.thread ], [ %_4.sroa.10.0.i.i69211.ph225, %cleanup ]
  %_21.0.i.i.i.i6165212229 = phi i64 [ %_21.0.i.i.i.i, %cleanup.thread ], [ %_21.0.i.i.i.i6165212.ph224, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %16, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i69211231, i64 %_3.sroa.0.012.i.i.i
  %16 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1141, !noalias !1144, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %17 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %18 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %18, align 8, !alias.scope !1141, !noalias !1144, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1150
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %16, %_5
  br i1 %_7.i.i.i, label %bb4.i34, label %bb5.i.i.i

bb4.i34:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i"
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i34
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i69211231, i64 noundef %_21.0.i.i.i.i6165212229, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1151
  br label %common.resume

unreachable:                                      ; preds = %panic.sink.split
  unreachable

bb58:                                             ; preds = %bb37
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %_157 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw i32, ptr %_157, i64 %_55
  %_0 = load i32, ptr %_53, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  br label %bb5.i.i.i38

bb5.i.i.i38:                                      ; preds = %bb58, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"
  %_3.sroa.0.012.i.i.i39 = phi i64 [ %20, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45" ], [ 0, %bb58 ]
  %_6.i.i.i40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %_3.sroa.0.012.i.i.i39
  %20 = add nuw i64 %_3.sroa.0.012.i.i.i39, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %self1.i.i.i.i1.i.i.i.i41 = load i64, ptr %_6.i.i.i40, align 8, !range !22, !alias.scope !1173, !noalias !1176, !noundef !6
  %_6.i.i.i.i2.i.i.i.i42 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i41, 0
  br i1 %_6.i.i.i.i2.i.i.i.i42, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45", label %bb2.i.i.i3.i.i.i.i43

bb2.i.i.i3.i.i.i.i43:                             ; preds = %bb5.i.i.i38
  %21 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i41, 2
  %22 = getelementptr inbounds nuw i8, ptr %_6.i.i.i40, i64 8
  %self3.i.i.i.i4.i.i.i.i44 = load ptr, ptr %22, align 8, !alias.scope !1173, !noalias !1176, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i44, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1182
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45": ; preds = %bb2.i.i.i3.i.i.i.i43, %bb5.i.i.i38
  %_7.i.i.i46 = icmp eq i64 %20, %_5
  br i1 %_7.i.i.i46, label %bb4.i47, label %bb5.i.i.i38

bb4.i47:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h0bc87498a6b214baE.exit.i.i.i45"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  ret i32 %_0

bb8.loopexit:                                     ; preds = %bb19, %bb44
  %_87 = icmp slt i32 %iter2.sroa.0.1130, %iter4
  %23 = zext i1 %_87 to i32
  %iter2.sroa.0.1 = add nuw nsw i32 %iter2.sroa.0.1130, %23
  br i1 %_87, label %bb9, label %bb5.loopexit

bb9:                                              ; preds = %bb6, %bb8.loopexit
  %iter2.sroa.0.1130 = phi i32 [ %iter2.sroa.0.1, %bb8.loopexit ], [ 2, %bb6 ]
  %iter2.sroa.0.0129 = phi i32 [ %iter2.sroa.0.1130, %bb8.loopexit ], [ 1, %bb6 ]
  %_20 = add nuw i32 %iter2.sroa.0.0129, %iter1.sroa.0.0133
  %j.reass = add i32 %iter2.sroa.0.0129, %invariant.op
  %_23 = zext i32 %iter2.sroa.0.0129 to i64
  %_99 = icmp ugt i32 %n, %iter2.sroa.0.0129
  br i1 %_99, label %bb43, label %panic20.invoke

bb43:                                             ; preds = %bb9
  %_22 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %_23
  %_24 = sext i32 %j.reass to i64
  %24 = getelementptr inbounds nuw i8, ptr %_22, i64 16
  %_102 = load i64, ptr %24, align 8, !noundef !6
  %_105 = icmp ugt i64 %_102, %_24
  br i1 %_105, label %bb44, label %panic6.invoke

bb44:                                             ; preds = %bb43
  %25 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %_103 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_21 = getelementptr inbounds nuw i32, ptr %_103, i64 %_24
  store i32 2147483647, ptr %_21, align 4
  %_106125 = icmp slt i32 %iter2.sroa.0.0129, %j.reass
  br i1 %_106125, label %bb50.lr.ph, label %bb8.loopexit

bb50.lr.ph:                                       ; preds = %bb44
  %_41 = add nsw i64 %_23, -1
  %_42 = icmp samesign ult i32 %iter2.sroa.0.0129, 3
  %_46 = icmp ugt i32 %_20, 2
  %26 = getelementptr inbounds nuw i32, ptr %p, i64 %_41
  %27 = getelementptr inbounds nuw i32, ptr %p, i64 %_24
  %umax = tail call i32 @llvm.umax.i32(i32 %iter2.sroa.0.0129, i32 2)
  %wide.trip.count200 = zext i32 %umax to i64
  %28 = add i32 %indvars.iv202, %iter2.sroa.0.0129
  %wide.trip.count204 = zext i32 %28 to i64
  br label %bb50

panic6.invoke:                                    ; preds = %bb43, %bb37
  %29 = phi i64 [ %_55, %bb37 ], [ %_24, %bb43 ]
  %30 = phi i64 [ %_156, %bb37 ], [ %_102, %bb43 ]
  %31 = phi ptr [ @alloc_5554d71ab0281b044ddf3f976bc7046b, %bb37 ], [ @alloc_70f436f01bd9ac7c881a80a7ceeab435, %bb43 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %29, i64 noundef %30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #21
          to label %panic6.cont unwind label %cleanup.thread

panic6.cont:                                      ; preds = %panic6.invoke
  unreachable

bb50:                                             ; preds = %bb50.lr.ph, %bb19
  %indvars.iv = phi i64 [ %_23, %bb50.lr.ph ], [ %indvars.iv.next, %bb19 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_120 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_119 = load i64, ptr %24, align 8, !noundef !6
  %_122 = icmp ugt i64 %_119, %indvars.iv
  br i1 %_122, label %bb51, label %panic20.invoke

bb51:                                             ; preds = %bb50
  %_31 = getelementptr inbounds nuw i32, ptr %_120, i64 %indvars.iv
  %_30 = load i32, ptr %_31, align 4, !noundef !6
  %_127 = icmp ult i64 %indvars.iv.next, %_5
  br i1 %_127, label %bb52, label %panic20.invoke

bb52:                                             ; preds = %bb51
  %_36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %3, i64 %indvars.iv.next
  %32 = getelementptr inbounds nuw i8, ptr %_36, i64 16
  %_129 = load i64, ptr %32, align 8, !noundef !6
  %_132 = icmp ugt i64 %_129, %_24
  br i1 %_132, label %bb53, label %panic20.invoke

bb53:                                             ; preds = %bb52
  %33 = getelementptr inbounds nuw i8, ptr %_36, i64 8
  %_130 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_130, i64 %_24
  %_34 = load i32, ptr %_35, align 4, !noundef !6
  %_29 = add i32 %_34, %_30
  br i1 %_42, label %bb14, label %panic20.invoke

bb14:                                             ; preds = %bb53
  %exitcond201.not = icmp eq i64 %indvars.iv, %wide.trip.count200
  %brmerge = select i1 %exitcond201.not, i1 true, i1 %_46
  br i1 %brmerge, label %panic20.invoke.loopexit.split.loop.exit366, label %bb16

bb16:                                             ; preds = %bb14
  %_40 = load i32, ptr %26, align 4, !noundef !6
  %34 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %_43 = load i32, ptr %34, align 4, !noundef !6
  %_39 = mul i32 %_43, %_40
  %_45 = load i32, ptr %27, align 4, !noundef !6
  %_38 = mul i32 %_39, %_45
  %q = add i32 %_29, %_38
  %_142 = icmp ugt i64 %_119, %_24
  br i1 %_142, label %bb55, label %panic20.invoke

bb55:                                             ; preds = %bb16
  %_49 = getelementptr inbounds nuw i32, ptr %_120, i64 %_24
  %_48 = load i32, ptr %_49, align 4, !noundef !6
  %_47 = icmp slt i32 %q, %_48
  br i1 %_47, label %bb57, label %bb19

bb19:                                             ; preds = %bb55, %bb57
  %exitcond205.not = icmp eq i64 %indvars.iv.next, %wide.trip.count204
  br i1 %exitcond205.not, label %bb8.loopexit, label %bb50

bb57:                                             ; preds = %bb55
  store i32 %q, ptr %_49, align 4
  br label %bb19

bb31:                                             ; preds = %bb3
  %35 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %_72 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_9 = getelementptr inbounds nuw i32, ptr %_72, i64 %indvars.iv194
  store i32 0, ptr %_9, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond.not, label %bb5.preheader, label %bb3

panic20.invoke.loopexit.split.loop.exit366:       ; preds = %bb14
  %wide.trip.count200.mux.le = select i1 %exitcond201.not, i64 %wide.trip.count200, i64 %_24
  %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le = select i1 %exitcond201.not, ptr @alloc_5a9b383c70a7b1dd16c6463a41b1abb9, ptr @alloc_6c3e1fd742bed77b62979487ae24177f
  br label %panic20.invoke

panic20.invoke:                                   ; preds = %bb3, %bb9, %panic20.invoke.loopexit.split.loop.exit366, %bb50, %bb51, %bb52, %bb53, %bb16
  %36 = phi i64 [ %wide.trip.count200.mux.le, %panic20.invoke.loopexit.split.loop.exit366 ], [ %indvars.iv, %bb50 ], [ %indvars.iv.next, %bb51 ], [ %_24, %bb52 ], [ %_41, %bb53 ], [ 1, %bb16 ], [ %_23, %bb9 ], [ %indvars.iv194, %bb3 ]
  %37 = phi i64 [ 2, %panic20.invoke.loopexit.split.loop.exit366 ], [ %_119, %bb50 ], [ %_5, %bb51 ], [ %_129, %bb52 ], [ 2, %bb53 ], [ 1, %bb16 ], [ %_5, %bb9 ], [ %_71, %bb3 ]
  %38 = phi ptr [ %alloc_5a9b383c70a7b1dd16c6463a41b1abb9.mux.le, %panic20.invoke.loopexit.split.loop.exit366 ], [ @alloc_d0443c52d7b59269158243a571eac4b5, %bb50 ], [ @alloc_239f04e72e439d78c92b38a8baf4dab2, %bb51 ], [ @alloc_7548566ae303f2ff03f66129afdc3ba3, %bb52 ], [ @alloc_2ae73ff7fcc4835fbf62e7ff24662534, %bb53 ], [ @alloc_46107255d94b854bcb82862ca3370e87, %bb16 ], [ @alloc_b56f14a803ebf901c777b26987ed4eed, %bb9 ], [ @alloc_2d43b99c8c45744d9d7977b95c4474e2, %bb3 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #21
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable
}
