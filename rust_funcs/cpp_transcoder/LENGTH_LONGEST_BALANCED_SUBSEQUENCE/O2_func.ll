define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_18 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %_5 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1080
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1080
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22, !noalias !1085
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %_21.0.i.i.i.i = mul nuw nsw i64 %_5, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1090
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #20, !noalias !1090
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i) #22
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1086

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_5, ptr %v.i, align 8, !noalias !1086
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1086
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %_2425.i.i.not = icmp eq i32 %n, 1
  br i1 %_2425.i.i.not, label %bb12.thread363, label %bb3.i.i.i.i.i.i

bb12.thread363:                                   ; preds = %bb1.i.i
  store i64 %_5, ptr %2, align 8, !noalias !1096
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i333, align 8, !noalias !1096
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i334, align 8, !noalias !1096
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  br label %bb62

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i47
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i47 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i47 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %8, %bb3.i3.i47 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1097
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1097
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i47

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1107

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i47:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i, i1 false), !noalias !1108
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1107
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1107
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1107
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %8 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_5
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %9 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1093, !noalias !1109
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1114
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6ebf526846c8aaaaE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1086
  br label %common.resume

common.resume:                                    ; preds = %bb2.i.i.i3.i, %cleanup1.body.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup1.body.i ], [ %10, %bb2.i.i.i3.i.i ], [ %lpad.phi356, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1123
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E.exit": ; preds = %bb3.i3.i47
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1096
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1096
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1096
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %iter3 = add nsw i32 %n, -1
  %_73262 = icmp sgt i32 %n, 1
  br i1 %_73262, label %bb3.lr.ph, label %bb62

bb3.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E.exit"
  %_85 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %11 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %13 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %iter3 to i64
  br label %bb3

bb10.preheader:                                   ; preds = %bb9
  %_126270.not = icmp eq i32 %n, 2
  br i1 %_126270.not, label %bb62, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %bb10.preheader
  %_150 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %14 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  br label %bb11

bb3:                                              ; preds = %bb3.lr.ph, %bb9
  %indvars.iv310 = phi i64 [ 0, %bb3.lr.ph ], [ %indvars.iv.next311.pre-phi, %bb9 ]
  %indvars.iv = phi i64 [ 1, %bb3.lr.ph ], [ %indvars.iv.next, %bb9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %s.0, ptr %_13, align 8
  store ptr %_85, ptr %11, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_89 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %indvars.iv310)
  %.not44 = icmp eq i64 %_89, 0
  br i1 %.not44, label %bb38, label %bb8

bb10.loopexit:                                    ; preds = %bb13.loopexit, %bb11
  %indvars.iv.next317 = add nuw nsw i32 %indvars.iv316, 1
  %exitcond319.not = icmp eq i32 %indvars.iv.next317, %n
  br i1 %exitcond319.not, label %bb62, label %bb11

bb11:                                             ; preds = %bb11.lr.ph, %bb10.loopexit
  %indvars.iv316 = phi i32 [ 2, %bb11.lr.ph ], [ %indvars.iv.next317, %bb10.loopexit ]
  %iter5 = sub nsw i32 %n, %indvars.iv316
  %_138266 = icmp sgt i32 %iter5, 0
  br i1 %_138266, label %bb14, label %bb10.loopexit

bb62:                                             ; preds = %bb10.loopexit, %bb10.preheader, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E.exit", %bb12.thread363
  %iter3330341349 = phi i32 [ 0, %bb12.thread363 ], [ %iter3, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h75ae87d13441fcd6E.exit" ], [ %iter3, %bb10.preheader ], [ %iter3, %bb10.loopexit ]
  %_72 = sext i32 %iter3330341349 to i64
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %_251 = load i64, ptr %16, align 8, !noundef !6
  %_254 = icmp ugt i64 %_251, %_72
  br i1 %_254, label %bb105, label %panic20.invoke.invoke

panic:                                            ; preds = %bb17.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1e1b4a6c671dec4b5f4887551daa03a6) #22
  unreachable

cleanup.thread350:                                ; preds = %panic9.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic20.invoke.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup, %cleanup.thread350
  %lpad.phi356 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread350 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %17, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_3.sroa.0.012.i.i.i
  %17 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %18 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %19 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %19, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %18, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %17, %_5
  br i1 %_7.i.i.i, label %bb2.i.i.i3.i, label %bb5.i.i.i

bb2.i.i.i3.i:                                     ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1157
  br label %common.resume

bb105:                                            ; preds = %bb62
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %_252 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_70 = getelementptr inbounds nuw i32, ptr %_252, i64 %_72
  %_0 = load i32, ptr %_70, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i52

bb5.i.i.i52:                                      ; preds = %bb105, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59"
  %_3.sroa.0.012.i.i.i53 = phi i64 [ %21, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59" ], [ 0, %bb105 ]
  %_6.i.i.i54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_3.sroa.0.012.i.i.i53
  %21 = add nuw i64 %_3.sroa.0.012.i.i.i53, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i55 = load i64, ptr %_6.i.i.i54, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i56 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i55, 0
  br i1 %_6.i.i.i.i2.i.i.i.i56, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59", label %bb2.i.i.i3.i.i.i.i57

bb2.i.i.i3.i.i.i.i57:                             ; preds = %bb5.i.i.i52
  %22 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i55, 2
  %23 = getelementptr inbounds nuw i8, ptr %_6.i.i.i54, i64 8
  %self3.i.i.i.i4.i.i.i.i58 = load ptr, ptr %23, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i58, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59": ; preds = %bb2.i.i.i3.i.i.i.i57, %bb5.i.i.i52
  %_7.i.i.i60 = icmp eq i64 %21, %_5
  br i1 %_7.i.i.i60, label %bb4.i61, label %bb5.i.i.i52

bb4.i61:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6f8ff0044f107da2E.exit.i.i.i59"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1189
  ret i32 %_0

bb13.loopexit:                                    ; preds = %bb104, %bb20
  %_138 = icmp slt i32 %iter2.sroa.0.1269, %iter5
  %24 = add i32 %iter2.sroa.0.1269, 1
  br i1 %_138, label %bb14, label %bb10.loopexit

bb14:                                             ; preds = %bb11, %bb13.loopexit
  %iter2.sroa.0.1269 = phi i32 [ %24, %bb13.loopexit ], [ 1, %bb11 ]
  %iter2.sroa.0.0268 = phi i32 [ %iter2.sroa.0.1269, %bb13.loopexit ], [ 0, %bb11 ]
  %j = add i32 %iter2.sroa.0.0268, %indvars.iv316
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %s.0, ptr %_34, align 8
  store ptr %_150, ptr %14, align 8
  %_35 = sext i32 %iter2.sroa.0.0268 to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_154 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %_35)
  %.not = icmp eq i64 %_154, 0
  br i1 %.not, label %bb71, label %bb19

bb71:                                             ; preds = %bb14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %ptr.i.i = load ptr, ptr %_34, align 8, !alias.scope !1199, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %14, align 8, !alias.scope !1199, !nonnull !6, !noundef !6
  %_7.i.i = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i, label %bb19, label %bb14.i66

bb14.i66:                                         ; preds = %bb71
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1196, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i68, label %bb4.i67

bb4.i67:                                          ; preds = %bb14.i66
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1196, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %25 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb75

bb3.i68:                                          ; preds = %bb14.i66
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb75

bb6.i:                                            ; preds = %bb4.i67
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1196, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %26 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb75

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1196, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %27 = or disjoint i32 %_27.i, %_25.i
  br label %bb75

bb75:                                             ; preds = %bb3.i68, %bb8.i, %bb6.i, %bb4.i67
  %_0.sroa.4.0.i.ph = phi i32 [ %25, %bb4.i67 ], [ %26, %bb6.i ], [ %27, %bb8.i ], [ %_7.i, %bb3.i68 ]
  %28 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %28)
  %29 = icmp eq i32 %_0.sroa.4.0.i.ph, 40
  br i1 %29, label %bb16, label %bb19

bb19:                                             ; preds = %bb71, %bb14, %bb75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb20

bb16:                                             ; preds = %bb75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %s.0, ptr %_39, align 8
  store ptr %_150, ptr %15, align 8
  %_40 = sext i32 %j to i64
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_170 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %_40)
  %.not43 = icmp eq i64 %_170, 0
  br i1 %.not43, label %bb81, label %bb18

bb20:                                             ; preds = %bb91, %bb18, %bb19
  %_201264 = icmp slt i32 %iter2.sroa.0.0268, %j
  br i1 %_201264, label %bb22.lr.ph, label %bb13.loopexit

bb22.lr.ph:                                       ; preds = %bb20
  %_212 = icmp ugt i32 %n, %iter2.sroa.0.0268
  %_56 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_35
  %_57 = sext i32 %j to i64
  %30 = getelementptr inbounds nuw i8, ptr %_56, i64 8
  %31 = getelementptr inbounds nuw i8, ptr %_56, i64 16
  br i1 %_212, label %bb22, label %panic20.invoke.invoke

bb81:                                             ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %ptr.i.i69 = load ptr, ptr %_39, align 8, !alias.scope !1205, !nonnull !6, !noundef !6
  %end_or_len.i.i70 = load ptr, ptr %15, align 8, !alias.scope !1205, !nonnull !6, !noundef !6
  %_7.i.i71 = icmp eq ptr %ptr.i.i69, %end_or_len.i.i70
  br i1 %_7.i.i71, label %bb18, label %bb14.i72

bb14.i72:                                         ; preds = %bb81
  %x.i74 = load i8, ptr %ptr.i.i69, align 1, !noalias !1202, !noundef !6
  %_6.i75 = icmp sgt i8 %x.i74, -1
  br i1 %_6.i75, label %bb3.i108, label %bb4.i76

bb4.i76:                                          ; preds = %bb14.i72
  %_18.i.i73 = getelementptr inbounds nuw i8, ptr %ptr.i.i69, i64 1
  %_30.i77 = and i8 %x.i74, 31
  %init.i78 = zext nneg i8 %_30.i77 to i32
  %_7.i10.i79 = icmp ne ptr %_18.i.i73, %end_or_len.i.i70
  tail call void @llvm.assume(i1 %_7.i10.i79)
  %y.i81 = load i8, ptr %_18.i.i73, align 1, !noalias !1202, !noundef !6
  %_34.i82 = shl nuw nsw i32 %init.i78, 6
  %_36.i83 = and i8 %y.i81, 63
  %_35.i84 = zext nneg i8 %_36.i83 to i32
  %32 = or disjoint i32 %_34.i82, %_35.i84
  %_13.i85 = icmp samesign ugt i8 %x.i74, -33
  br i1 %_13.i85, label %bb6.i88, label %bb85

bb3.i108:                                         ; preds = %bb14.i72
  %_7.i109 = zext nneg i8 %x.i74 to i32
  br label %bb85

bb6.i88:                                          ; preds = %bb4.i76
  %_18.i12.i80 = getelementptr inbounds nuw i8, ptr %ptr.i.i69, i64 2
  %_7.i17.i89 = icmp ne ptr %_18.i12.i80, %end_or_len.i.i70
  tail call void @llvm.assume(i1 %_7.i17.i89)
  %z.i91 = load i8, ptr %_18.i12.i80, align 1, !noalias !1202, !noundef !6
  %_40.i92 = shl nuw nsw i32 %_35.i84, 6
  %_42.i93 = and i8 %z.i91, 63
  %_41.i94 = zext nneg i8 %_42.i93 to i32
  %y_z.i95 = or disjoint i32 %_40.i92, %_41.i94
  %_20.i96 = shl nuw nsw i32 %init.i78, 12
  %33 = or disjoint i32 %y_z.i95, %_20.i96
  %_21.i97 = icmp samesign ugt i8 %x.i74, -17
  br i1 %_21.i97, label %bb8.i98, label %bb85

bb8.i98:                                          ; preds = %bb6.i88
  %_18.i19.i90 = getelementptr inbounds nuw i8, ptr %ptr.i.i69, i64 3
  %_7.i24.i99 = icmp ne ptr %_18.i19.i90, %end_or_len.i.i70
  tail call void @llvm.assume(i1 %_7.i24.i99)
  %w.i101 = load i8, ptr %_18.i19.i90, align 1, !noalias !1202, !noundef !6
  %_26.i102 = shl nuw nsw i32 %init.i78, 18
  %_25.i103 = and i32 %_26.i102, 1835008
  %_46.i104 = shl nuw nsw i32 %y_z.i95, 6
  %_48.i105 = and i8 %w.i101, 63
  %_47.i106 = zext nneg i8 %_48.i105 to i32
  %_27.i107 = or disjoint i32 %_46.i104, %_47.i106
  %34 = or disjoint i32 %_27.i107, %_25.i103
  br label %bb85

bb85:                                             ; preds = %bb3.i108, %bb8.i98, %bb6.i88, %bb4.i76
  %_0.sroa.4.0.i86.ph = phi i32 [ %32, %bb4.i76 ], [ %33, %bb6.i88 ], [ %34, %bb8.i98 ], [ %_7.i109, %bb3.i108 ]
  %35 = icmp samesign ult i32 %_0.sroa.4.0.i86.ph, 1114112
  tail call void @llvm.assume(i1 %35)
  %36 = icmp eq i32 %_0.sroa.4.0.i86.ph, 41
  br i1 %36, label %bb17, label %bb18

bb18:                                             ; preds = %bb81, %bb16, %bb85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  br label %bb20

bb17:                                             ; preds = %bb85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  %_44 = sext i32 %iter2.sroa.0.1269 to i64
  %_183 = icmp ugt i32 %n, %iter2.sroa.0.1269
  br i1 %_183, label %bb88, label %panic20.invoke.invoke

bb88:                                             ; preds = %bb17
  %_43 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_44
  %_47 = add i32 %j, -1
  %_46 = sext i32 %_47 to i64
  %37 = getelementptr inbounds nuw i8, ptr %_43, i64 16
  %_185 = load i64, ptr %37, align 8, !noundef !6
  %_188 = icmp ugt i64 %_185, %_46
  br i1 %_188, label %bb89, label %panic9.invoke

bb89:                                             ; preds = %bb88
  %38 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  %_186 = load ptr, ptr %38, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw i32, ptr %_186, i64 %_46
  %_41 = load i32, ptr %_42, align 4, !noundef !6
  %_194 = icmp ugt i32 %n, %iter2.sroa.0.0268
  br i1 %_194, label %bb90, label %panic9.invoke

bb90:                                             ; preds = %bb89
  %_49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_35
  %39 = getelementptr inbounds nuw i8, ptr %_49, i64 16
  %_197 = load i64, ptr %39, align 8, !noundef !6
  %_200 = icmp ugt i64 %_197, %_40
  br i1 %_200, label %bb91, label %panic9.invoke

bb91:                                             ; preds = %bb90
  %40 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  %_198 = load ptr, ptr %40, align 8, !nonnull !6, !noundef !6
  %_48 = getelementptr inbounds nuw i32, ptr %_198, i64 %_40
  %41 = add i32 %_41, 2
  store i32 %41, ptr %_48, align 4
  br label %bb20

panic9.invoke:                                    ; preds = %bb90, %bb89, %bb88
  %42 = phi i64 [ %_46, %bb88 ], [ %_35, %bb89 ], [ %_40, %bb90 ]
  %43 = phi i64 [ %_185, %bb88 ], [ %_5, %bb89 ], [ %_197, %bb90 ]
  %44 = phi ptr [ @alloc_fdac7b42e40d41a8c95f01901025d1fc, %bb88 ], [ @alloc_4841e6be75a917392010379b2cb2e625, %bb89 ], [ @alloc_b7ac5b29ea6dd2de7a7bc891df8b58d6, %bb90 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %42, i64 noundef %43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %44) #22
          to label %panic9.cont unwind label %cleanup.thread350

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

bb22:                                             ; preds = %bb22.lr.ph, %bb104
  %i.sroa.0.0265 = phi i32 [ %45, %bb104 ], [ %iter2.sroa.0.0268, %bb22.lr.ph ]
  %45 = add nuw nsw i32 %i.sroa.0.0265, 1
  %_215 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_214 = load i64, ptr %31, align 8, !noundef !6
  %_217 = icmp ugt i64 %_214, %_57
  br i1 %_217, label %bb98, label %panic20.invoke.invoke

bb98:                                             ; preds = %bb22
  %_55 = getelementptr inbounds nuw i32, ptr %_215, i64 %_57
  %_54 = load i32, ptr %_55, align 4, !noundef !6
  %_62 = sext i32 %i.sroa.0.0265 to i64
  %_227 = icmp ugt i64 %_214, %_62
  br i1 %_227, label %bb100, label %panic20.invoke.invoke

bb100:                                            ; preds = %bb98
  %_60 = getelementptr inbounds nuw i32, ptr %_215, i64 %_62
  %_59 = load i32, ptr %_60, align 4, !noundef !6
  %_66 = sext i32 %45 to i64
  %exitcond315.not = icmp eq i32 %i.sroa.0.0265, %iter3
  br i1 %exitcond315.not, label %panic20.invoke.invoke, label %bb101

bb101:                                            ; preds = %bb100
  %_65 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %_66
  %46 = getelementptr inbounds nuw i8, ptr %_65, i64 16
  %_234 = load i64, ptr %46, align 8, !noundef !6
  %_237 = icmp ugt i64 %_234, %_57
  br i1 %_237, label %bb104, label %panic20.invoke.invoke

bb104:                                            ; preds = %bb101
  %47 = getelementptr inbounds nuw i8, ptr %_65, i64 8
  %_235 = load ptr, ptr %47, align 8, !nonnull !6, !noundef !6
  %_64 = getelementptr inbounds nuw i32, ptr %_235, i64 %_57
  %_63 = load i32, ptr %_64, align 4, !noundef !6
  %_58 = add i32 %_63, %_59
  %_0.sroa.0.0.i111 = tail call noundef i32 @llvm.smax.i32(i32 %_58, i32 %_54)
  store i32 %_0.sroa.0.0.i111, ptr %_55, align 4
  %exitcond318.not = icmp eq i32 %45, %j
  br i1 %exitcond318.not, label %bb13.loopexit, label %bb22

bb38:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %ptr.i.i112 = load ptr, ptr %_13, align 8, !alias.scope !1211, !nonnull !6, !noundef !6
  %end_or_len.i.i113 = load ptr, ptr %11, align 8, !alias.scope !1211, !nonnull !6, !noundef !6
  %_7.i.i114 = icmp eq ptr %ptr.i.i112, %end_or_len.i.i113
  br i1 %_7.i.i114, label %bb8, label %bb14.i115

bb14.i115:                                        ; preds = %bb38
  %x.i117 = load i8, ptr %ptr.i.i112, align 1, !noalias !1208, !noundef !6
  %_6.i118 = icmp sgt i8 %x.i117, -1
  br i1 %_6.i118, label %bb3.i151, label %bb4.i119

bb4.i119:                                         ; preds = %bb14.i115
  %_18.i.i116 = getelementptr inbounds nuw i8, ptr %ptr.i.i112, i64 1
  %_30.i120 = and i8 %x.i117, 31
  %init.i121 = zext nneg i8 %_30.i120 to i32
  %_7.i10.i122 = icmp ne ptr %_18.i.i116, %end_or_len.i.i113
  tail call void @llvm.assume(i1 %_7.i10.i122)
  %y.i124 = load i8, ptr %_18.i.i116, align 1, !noalias !1208, !noundef !6
  %_34.i125 = shl nuw nsw i32 %init.i121, 6
  %_36.i126 = and i8 %y.i124, 63
  %_35.i127 = zext nneg i8 %_36.i126 to i32
  %48 = or disjoint i32 %_34.i125, %_35.i127
  %_13.i128 = icmp samesign ugt i8 %x.i117, -33
  br i1 %_13.i128, label %bb6.i131, label %bb42

bb3.i151:                                         ; preds = %bb14.i115
  %_7.i152 = zext nneg i8 %x.i117 to i32
  br label %bb42

bb6.i131:                                         ; preds = %bb4.i119
  %_18.i12.i123 = getelementptr inbounds nuw i8, ptr %ptr.i.i112, i64 2
  %_7.i17.i132 = icmp ne ptr %_18.i12.i123, %end_or_len.i.i113
  tail call void @llvm.assume(i1 %_7.i17.i132)
  %z.i134 = load i8, ptr %_18.i12.i123, align 1, !noalias !1208, !noundef !6
  %_40.i135 = shl nuw nsw i32 %_35.i127, 6
  %_42.i136 = and i8 %z.i134, 63
  %_41.i137 = zext nneg i8 %_42.i136 to i32
  %y_z.i138 = or disjoint i32 %_40.i135, %_41.i137
  %_20.i139 = shl nuw nsw i32 %init.i121, 12
  %49 = or disjoint i32 %y_z.i138, %_20.i139
  %_21.i140 = icmp samesign ugt i8 %x.i117, -17
  br i1 %_21.i140, label %bb8.i141, label %bb42

bb8.i141:                                         ; preds = %bb6.i131
  %_18.i19.i133 = getelementptr inbounds nuw i8, ptr %ptr.i.i112, i64 3
  %_7.i24.i142 = icmp ne ptr %_18.i19.i133, %end_or_len.i.i113
  tail call void @llvm.assume(i1 %_7.i24.i142)
  %w.i144 = load i8, ptr %_18.i19.i133, align 1, !noalias !1208, !noundef !6
  %_26.i145 = shl nuw nsw i32 %init.i121, 18
  %_25.i146 = and i32 %_26.i145, 1835008
  %_46.i147 = shl nuw nsw i32 %y_z.i138, 6
  %_48.i148 = and i8 %w.i144, 63
  %_47.i149 = zext nneg i8 %_48.i148 to i32
  %_27.i150 = or disjoint i32 %_46.i147, %_47.i149
  %50 = or disjoint i32 %_27.i150, %_25.i146
  br label %bb42

bb42:                                             ; preds = %bb3.i151, %bb8.i141, %bb6.i131, %bb4.i119
  %_0.sroa.4.0.i129.ph = phi i32 [ %48, %bb4.i119 ], [ %49, %bb6.i131 ], [ %50, %bb8.i141 ], [ %_7.i152, %bb3.i151 ]
  %51 = icmp samesign ult i32 %_0.sroa.4.0.i129.ph, 1114112
  tail call void @llvm.assume(i1 %51)
  %52 = icmp eq i32 %_0.sroa.4.0.i129.ph, 40
  br i1 %52, label %bb5, label %bb8

bb8:                                              ; preds = %bb38, %bb3, %bb42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  %.pre = add nuw nsw i64 %indvars.iv310, 1
  br label %bb9

bb5:                                              ; preds = %bb42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_18)
  store ptr %s.0, ptr %_18, align 8
  store ptr %_85, ptr %12, align 8
  %_19 = add nuw nsw i64 %indvars.iv310, 1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_105 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_18, i64 noundef %_19)
  %.not45 = icmp eq i64 %_105, 0
  br i1 %.not45, label %bb48, label %bb7

bb9:                                              ; preds = %bb56, %bb7, %bb8
  %indvars.iv.next311.pre-phi = phi i64 [ %_19, %bb56 ], [ %_19, %bb7 ], [ %.pre, %bb8 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next311.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %bb10.preheader, label %bb3

bb48:                                             ; preds = %bb5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %ptr.i.i154 = load ptr, ptr %_18, align 8, !alias.scope !1217, !nonnull !6, !noundef !6
  %end_or_len.i.i155 = load ptr, ptr %12, align 8, !alias.scope !1217, !nonnull !6, !noundef !6
  %_7.i.i156 = icmp eq ptr %ptr.i.i154, %end_or_len.i.i155
  br i1 %_7.i.i156, label %bb7, label %bb14.i157

bb14.i157:                                        ; preds = %bb48
  %x.i159 = load i8, ptr %ptr.i.i154, align 1, !noalias !1214, !noundef !6
  %_6.i160 = icmp sgt i8 %x.i159, -1
  br i1 %_6.i160, label %bb3.i193, label %bb4.i161

bb4.i161:                                         ; preds = %bb14.i157
  %_18.i.i158 = getelementptr inbounds nuw i8, ptr %ptr.i.i154, i64 1
  %_30.i162 = and i8 %x.i159, 31
  %init.i163 = zext nneg i8 %_30.i162 to i32
  %_7.i10.i164 = icmp ne ptr %_18.i.i158, %end_or_len.i.i155
  tail call void @llvm.assume(i1 %_7.i10.i164)
  %y.i166 = load i8, ptr %_18.i.i158, align 1, !noalias !1214, !noundef !6
  %_34.i167 = shl nuw nsw i32 %init.i163, 6
  %_36.i168 = and i8 %y.i166, 63
  %_35.i169 = zext nneg i8 %_36.i168 to i32
  %53 = or disjoint i32 %_34.i167, %_35.i169
  %_13.i170 = icmp samesign ugt i8 %x.i159, -33
  br i1 %_13.i170, label %bb6.i173, label %bb52

bb3.i193:                                         ; preds = %bb14.i157
  %_7.i194 = zext nneg i8 %x.i159 to i32
  br label %bb52

bb6.i173:                                         ; preds = %bb4.i161
  %_18.i12.i165 = getelementptr inbounds nuw i8, ptr %ptr.i.i154, i64 2
  %_7.i17.i174 = icmp ne ptr %_18.i12.i165, %end_or_len.i.i155
  tail call void @llvm.assume(i1 %_7.i17.i174)
  %z.i176 = load i8, ptr %_18.i12.i165, align 1, !noalias !1214, !noundef !6
  %_40.i177 = shl nuw nsw i32 %_35.i169, 6
  %_42.i178 = and i8 %z.i176, 63
  %_41.i179 = zext nneg i8 %_42.i178 to i32
  %y_z.i180 = or disjoint i32 %_40.i177, %_41.i179
  %_20.i181 = shl nuw nsw i32 %init.i163, 12
  %54 = or disjoint i32 %y_z.i180, %_20.i181
  %_21.i182 = icmp samesign ugt i8 %x.i159, -17
  br i1 %_21.i182, label %bb8.i183, label %bb52

bb8.i183:                                         ; preds = %bb6.i173
  %_18.i19.i175 = getelementptr inbounds nuw i8, ptr %ptr.i.i154, i64 3
  %_7.i24.i184 = icmp ne ptr %_18.i19.i175, %end_or_len.i.i155
  tail call void @llvm.assume(i1 %_7.i24.i184)
  %w.i186 = load i8, ptr %_18.i19.i175, align 1, !noalias !1214, !noundef !6
  %_26.i187 = shl nuw nsw i32 %init.i163, 18
  %_25.i188 = and i32 %_26.i187, 1835008
  %_46.i189 = shl nuw nsw i32 %y_z.i180, 6
  %_48.i190 = and i8 %w.i186, 63
  %_47.i191 = zext nneg i8 %_48.i190 to i32
  %_27.i192 = or disjoint i32 %_46.i189, %_47.i191
  %55 = or disjoint i32 %_27.i192, %_25.i188
  br label %bb52

bb52:                                             ; preds = %bb3.i193, %bb8.i183, %bb6.i173, %bb4.i161
  %_0.sroa.4.0.i171.ph = phi i32 [ %53, %bb4.i161 ], [ %54, %bb6.i173 ], [ %55, %bb8.i183 ], [ %_7.i194, %bb3.i193 ]
  %56 = icmp samesign ult i32 %_0.sroa.4.0.i171.ph, 1114112
  tail call void @llvm.assume(i1 %56)
  %57 = icmp eq i32 %_0.sroa.4.0.i171.ph, 41
  br i1 %57, label %bb6, label %bb7

bb7:                                              ; preds = %bb48, %bb5, %bb52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  br label %bb9

bb6:                                              ; preds = %bb52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_18)
  %_119 = icmp ult i64 %indvars.iv310, %13
  br i1 %_119, label %bb55, label %panic20.invoke.invoke

bb55:                                             ; preds = %bb6
  %_21 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %2, i64 %indvars.iv310
  %58 = getelementptr inbounds nuw i8, ptr %_21, i64 16
  %_122 = load i64, ptr %58, align 8, !noundef !6
  %_125 = icmp ugt i64 %_122, %indvars.iv
  br i1 %_125, label %bb56, label %panic20.invoke.invoke

bb56:                                             ; preds = %bb55
  %59 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %_123 = load ptr, ptr %59, align 8, !nonnull !6, !noundef !6
  %_20 = getelementptr inbounds nuw i32, ptr %_123, i64 %indvars.iv
  store i32 2, ptr %_20, align 4
  br label %bb9

panic20.invoke.invoke:                            ; preds = %bb6, %bb55, %bb17, %bb22.lr.ph, %bb22, %bb98, %bb100, %bb101, %bb62
  %60 = phi i64 [ %_72, %bb62 ], [ %_57, %bb22 ], [ %_62, %bb98 ], [ %_66, %bb100 ], [ %_57, %bb101 ], [ %_44, %bb17 ], [ %_35, %bb22.lr.ph ], [ %indvars.iv310, %bb6 ], [ %indvars.iv, %bb55 ]
  %61 = phi i64 [ %_251, %bb62 ], [ %_214, %bb22 ], [ %_214, %bb98 ], [ %_5, %bb100 ], [ %_234, %bb101 ], [ %_5, %bb22.lr.ph ], [ %_5, %bb17 ], [ %_5, %bb6 ], [ %_122, %bb55 ]
  %62 = phi ptr [ @alloc_8eca53450ec288f263432e88d812ebcc, %bb62 ], [ @alloc_2fa400b97d5d904a5c45e6f36c78c2ab, %bb22 ], [ @alloc_9ae9a03d413ca4dca3511fe4bf9b3072, %bb98 ], [ @alloc_8c5b540016f8cbd25db702c9167b5a9b, %bb100 ], [ @alloc_ae7bf0ffce10b99e6f84fac49cb6312e, %bb101 ], [ @alloc_78ab7e9ff6bd77fdaae5bb606449e98f, %bb17 ], [ @alloc_d494a4dec9e8695b9e5f9c63a4729c1c, %bb22.lr.ph ], [ @alloc_c48711e634871e8adc6a6770b8d79381, %bb6 ], [ @alloc_b121197f4b79b80fe84c9997be5f199b, %bb55 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %60, i64 noundef %61, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %62) #22
          to label %panic20.invoke.cont unwind label %cleanup

panic20.invoke.cont:                              ; preds = %panic20.invoke.invoke
  unreachable
}
