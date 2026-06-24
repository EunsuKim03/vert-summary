define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len = load i64, ptr %0, align 8, !noundef !6
  %_51 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_51)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %bb19, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %bb19

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb17:                                             ; preds = %cleanup2, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i31, %cleanup
  %.pn = phi { ptr, i32 } [ %19, %cleanup2 ], [ %5, %cleanup ], [ %14, %cleanup1.body.i ], [ %15, %bb4.i ], [ %15, %bb2.i.i.i3.i.i31 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !22, !alias.scope !1091, !noalias !1094, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb17
  %4 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1091, !noalias !1094, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1096
  br label %bb18

cleanup:                                          ; preds = %bb14.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb19:                                             ; preds = %bb10.i.i, %bb17.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %6 = inttoptr i64 %_16.sroa.10.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %_21.0.i.i.i.i = mul i64 %len, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %len, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb19
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1101
; call __rustc::__rust_alloc
  %7 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1101
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb19
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb19 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1097

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %len, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %7, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ule i64 %len, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1097
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %9, align 8, !noalias !1097
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %_2425.i.i = icmp samesign ugt i64 %len, 1
  br i1 %_2425.i.i, label %bb13.i.i, label %bb14.i.i

bb14.i.i:                                         ; preds = %bb1.i.i
  %_17.not.i.i = icmp eq i64 %len, 0
  br i1 %_17.not.i.i, label %bb6.i.i, label %bb17.i.i27

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i28
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i28 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i28 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %13, %bb3.i3.i28 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i28, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1107
; call __rustc::__rust_alloc
  %11 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %bb3.i.i.i.i.i, label %bb3.i3.i28

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1117

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb14.i.i
  store i64 0, ptr %10, align 8, !alias.scope !1104, !noalias !1118
  br i1 %_8.i.i, label %bb20, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1123
  br label %bb20

bb17.i.i27:                                       ; preds = %bb3.i3.i28, %bb14.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb14.i.i ], [ %_15.i.i, %bb3.i3.i28 ]
  store i64 %_6, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1132
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %6, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1132
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1132
  store i64 %len, ptr %10, align 8, !alias.scope !1104, !noalias !1133
  br label %bb20

bb3.i3.i28:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %11, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %6, i64 %_21.0.i.i.i, i1 false), !noalias !1138
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1117
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %13 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %len
  br i1 %exitcond.not.i.i, label %bb17.i.i27, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %10, align 8, !alias.scope !1104, !noalias !1139
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1144
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1097
  br label %bb17

bb4.i:                                            ; preds = %bb3.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb17, label %bb2.i.i.i3.i.i31

bb2.i.i.i3.i.i31:                                 ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1153
  br label %bb17

bb20:                                             ; preds = %bb17.i.i27, %bb2.i.i.i3.i.i.i, %bb6.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1162
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_55 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_54 = load i64, ptr %17, align 8, !noundef !6
  %_57.not = icmp eq i64 %_54, 0
  br i1 %_57.not, label %panic21.invoke, label %bb21

bb21:                                             ; preds = %bb20
  %18 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_13.not = icmp eq i64 %len, 0
  br i1 %_13.not, label %panic21.invoke, label %bb1

cleanup2:                                         ; preds = %panic21.invoke, %panic4
  %19 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbb39638943c8d54cE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %bb17

unreachable:                                      ; preds = %panic4
  unreachable

bb1:                                              ; preds = %bb21
  br i1 %_8.i.i, label %panic4, label %bb2

bb2:                                              ; preds = %bb1
  %_60 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_12 = load i8, ptr %_60, align 1, !noundef !6
  %_11 = add i8 %_12, -48
  %_10 = zext i8 %_11 to i64
  %_9 = urem i64 %_10, %_6
  %20 = getelementptr inbounds nuw i8, ptr %_55, i64 16
  %_64 = load i64, ptr %20, align 8, !noundef !6
  %_67 = icmp ult i64 %_9, %_64
  br i1 %_67, label %bb22, label %panic21.invoke

panic4:                                           ; preds = %bb1
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9020416cf4c17ccf4816ff7d2dbc84e) #21
          to label %unreachable unwind label %cleanup2

bb22:                                             ; preds = %bb2
  %21 = getelementptr inbounds nuw i8, ptr %_55, i64 8
  %_65 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_7 = getelementptr inbounds nuw i32, ptr %_65, i64 %_9
  %22 = load i32, ptr %_7, align 4, !noundef !6
  %23 = add i32 %22, 1
  store i32 %23, ptr %_7, align 4
  %_6873.not = icmp eq i64 %len, 1
  br i1 %_6873.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %bb22
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb5

bb3.loopexit:                                     ; preds = %bb41
  %_68 = icmp samesign ult i64 %iter.sroa.0.176, %len
  %24 = zext i1 %_68 to i64
  %iter.sroa.0.1 = add nuw nsw i64 %iter.sroa.0.176, %24
  br i1 %_68, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.lr.ph, %bb3.loopexit
  %iter.sroa.0.176 = phi i64 [ 2, %bb5.lr.ph ], [ %iter.sroa.0.1, %bb3.loopexit ]
  %iter.sroa.0.075 = phi i64 [ 1, %bb5.lr.ph ], [ %iter.sroa.0.176, %bb3.loopexit ]
  %_77 = icmp ult i64 %iter.sroa.0.075, %_54
  br i1 %_77, label %bb8, label %panic21.invoke

bb6:                                              ; preds = %bb3.loopexit, %bb22
  %_50 = add nsw i64 %len, -1
  %_82 = icmp ult i64 %_50, %_54
  br i1 %_82, label %bb27, label %panic21.invoke

bb27:                                             ; preds = %bb6
  %_49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_55, i64 %_50
  %25 = getelementptr inbounds nuw i8, ptr %_49, i64 16
  %_149 = load i64, ptr %25, align 8, !noundef !6
  %_152.not = icmp eq i64 %_149, 0
  br i1 %_152.not, label %panic21.invoke, label %bb42

bb42:                                             ; preds = %bb27
  %26 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  %_150 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_0 = load i32, ptr %_150, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb42, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %27, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i" ], [ 0, %bb42 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_55, i64 %_3.sroa.0.012.i.i.i
  %27 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1181, !noalias !1184, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %28 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %29 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %29, align 8, !alias.scope !1181, !noalias !1184, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %27, %_54
  br i1 %_7.i.i.i, label %bb4.i33, label %bb5.i.i.i

bb4.i33:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h24e82984dad98ee8E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1198, !noalias !1201, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb14, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i33
  %30 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_55, i64 noundef %30, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1203
  br label %bb14

bb14:                                             ; preds = %bb2.i.i.i3.i, %bb4.i33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  %self1.i.i.i.i1.i.i34 = load i64, ptr %str, align 8, !range !22, !alias.scope !1219, !noalias !1222, !noundef !6
  %_6.i.i.i.i2.i.i35 = icmp eq i64 %self1.i.i.i.i1.i.i34, 0
  br i1 %_6.i.i.i.i2.i.i35, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE.exit38", label %bb2.i.i.i3.i.i36

bb2.i.i.i3.i.i36:                                 ; preds = %bb14
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_60, i64 noundef %self1.i.i.i.i1.i.i34, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1224
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE.exit38"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h596bf5775a548fceE.exit38": ; preds = %bb14, %bb2.i.i.i3.i.i36
  ret i32 %_0

bb8:                                              ; preds = %bb5
  %_19 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_55, i64 %iter.sroa.0.075
  %31 = getelementptr inbounds nuw i8, ptr %_60, i64 %iter.sroa.0.075
  %_23 = load i8, ptr %31, align 1, !noundef !6
  %_22 = add i8 %_23, -48
  %_21 = zext i8 %_22 to i64
  %_20 = urem i64 %_21, %_6
  %32 = getelementptr inbounds nuw i8, ptr %_19, i64 16
  %_89 = load i64, ptr %32, align 8, !noundef !6
  %_92 = icmp ult i64 %_20, %_89
  br i1 %_92, label %bb10.preheader, label %panic21.invoke

bb10.preheader:                                   ; preds = %bb8
  %33 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %_90 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_18 = getelementptr inbounds nuw i32, ptr %_90, i64 %_20
  %34 = load i32, ptr %_18, align 4, !noundef !6
  %35 = add i32 %34, 1
  store i32 %35, ptr %_18, align 4
  %36 = getelementptr %"alloc::vec::Vec<i32>", ptr %_55, i64 %iter.sroa.0.075
  %37 = getelementptr i8, ptr %36, i64 -8
  %38 = getelementptr i8, ptr %36, i64 -16
  br label %bb10

bb10:                                             ; preds = %bb10.preheader, %bb41
  %indvars.iv116 = phi i64 [ 0, %bb10.preheader ], [ %indvars.iv.next117, %bb41 ]
  %_106 = load i64, ptr %37, align 8, !noundef !6
  %_109 = icmp ugt i64 %_106, %indvars.iv116
  br i1 %_109, label %bb36, label %panic21.invoke

bb36:                                             ; preds = %bb10
  %_118 = load i64, ptr %32, align 8, !noundef !6
  %_121 = icmp ugt i64 %_118, %indvars.iv116
  br i1 %_121, label %bb38, label %panic21.invoke

bb38:                                             ; preds = %bb36
  %_107 = load ptr, ptr %38, align 8, !nonnull !6, !noundef !6
  %_29 = getelementptr inbounds nuw i32, ptr %_107, i64 %indvars.iv116
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_119 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_33 = getelementptr inbounds nuw i32, ptr %_119, i64 %indvars.iv116
  %39 = load i32, ptr %_33, align 4, !noundef !6
  %40 = add i32 %39, %_28
  store i32 %40, ptr %_33, align 4
  %_128 = load i64, ptr %37, align 8, !noundef !6
  %_131 = icmp ugt i64 %_128, %indvars.iv116
  br i1 %_131, label %bb13, label %panic21.invoke

bb13:                                             ; preds = %bb38
  %_43 = mul i64 %indvars.iv116, 10
  %_46 = load i8, ptr %31, align 1, !noundef !6
  %_45 = add i8 %_46, -48
  %_44 = zext i8 %_45 to i64
  %_42 = add i64 %_43, %_44
  %sext = shl i64 %_42, 32
  %_41 = ashr exact i64 %sext, 32
  %_40 = urem i64 %_41, %_6
  %_144 = load i64, ptr %32, align 8, !noundef !6
  %_147 = icmp ult i64 %_40, %_144
  br i1 %_147, label %bb41, label %panic21.invoke

bb41:                                             ; preds = %bb13
  %_129 = load ptr, ptr %38, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_129, i64 %indvars.iv116
  %_35 = load i32, ptr %_36, align 4, !noundef !6
  %_145 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_145, i64 %_40
  %41 = load i32, ptr %_38, align 4, !noundef !6
  %42 = add i32 %41, %_35
  store i32 %42, ptr %_38, align 4
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %bb3.loopexit, label %bb10

panic21.invoke:                                   ; preds = %bb8, %bb5, %bb13, %bb38, %bb36, %bb10, %bb20, %bb27, %bb6, %bb2, %bb21
  %43 = phi i64 [ 0, %bb21 ], [ %_9, %bb2 ], [ %_50, %bb6 ], [ 0, %bb27 ], [ 0, %bb20 ], [ %indvars.iv116, %bb10 ], [ %indvars.iv116, %bb36 ], [ %indvars.iv116, %bb38 ], [ %_40, %bb13 ], [ %iter.sroa.0.075, %bb5 ], [ %_20, %bb8 ]
  %44 = phi i64 [ 0, %bb21 ], [ %_64, %bb2 ], [ %_54, %bb6 ], [ 0, %bb27 ], [ 0, %bb20 ], [ %_106, %bb10 ], [ %_118, %bb36 ], [ %_128, %bb38 ], [ %_144, %bb13 ], [ %_54, %bb5 ], [ %_89, %bb8 ]
  %45 = phi ptr [ @alloc_d09248569f8b3cdbf62cd639b51892bf, %bb21 ], [ @alloc_390d12d247582ccf9e7b3ab6a346ac19, %bb2 ], [ @alloc_1521b96a261b253deaa459eb31a92544, %bb6 ], [ @alloc_f24cd11875f84467635e79aa9592747e, %bb27 ], [ @alloc_bdf3931a460671aeeed275c2378e41bd, %bb20 ], [ @alloc_f688a195bdb62474b00d80c3462d68ba, %bb10 ], [ @alloc_e4260f00f61be59df837d67b4fc34189, %bb36 ], [ @alloc_55f33d4e9119dc18f6e55eb5230cd057, %bb38 ], [ @alloc_2b3f18b93afb77df816dfe79e70614e4, %bb13 ], [ @alloc_d1a680acec439a3168a347ebce64ebaa, %bb5 ], [ @alloc_b1b37c7782e4e6cb4597f292e11f4ee8, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #21
          to label %panic21.cont unwind label %cleanup2

panic21.cont:                                     ; preds = %panic21.invoke
  unreachable

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %bb17
  resume { ptr, i32 } %.pn
}
