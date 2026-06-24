define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %S.0, i64 noundef %S.1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %T.0, i64 noundef %T.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_44 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %_5 = icmp ugt i64 %T.1, %S.1
  br i1 %_5, label %bb20, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
  %_8 = add i64 %S.1, 1
  %_21.0.i.i.i = shl i64 %_8, 2
  %_21.1.i.i.i = icmp ugt i64 %_8, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %bb2
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1080
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1080
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %bb2
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %bb2 ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22, !noalias !1085
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.4.0.i = phi i64 [ %_8, %bb10.i.i ], [ 0, %bb17.i.i ]
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = add i64 %T.1, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %_21.0.i.i.i.i = mul i64 %_9, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_9, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit"
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1090
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #20, !noalias !1090
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcd5715c5d9b93fb8E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #22
          to label %.noexc.i unwind label %bb4.i, !noalias !1086

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_9, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %4, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ule i64 %_9, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1086
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %6, align 8, !noalias !1086
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %_2425.i.i = icmp samesign ugt i64 %_9, 1
  br i1 %_2425.i.i, label %bb13.lr.ph.i.i, label %bb14.i.i

bb13.lr.ph.i.i:                                   ; preds = %bb1.i.i
  %_8.i.i.i.i.i.i = icmp eq i64 %_8, 0
  br label %bb13.i.i

bb14.i.i:                                         ; preds = %bb1.i.i
  %_17.not.i.i = icmp eq i64 %_9, 0
  br i1 %_17.not.i.i, label %bb6.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit"

bb13.i.i:                                         ; preds = %bb3.i3.i46, %bb13.lr.ph.i.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb13.lr.ph.i.i ], [ %_15.i.i, %bb3.i3.i46 ]
  %iter.sroa.0.027.i.i = phi i64 [ 1, %bb13.lr.ph.i.i ], [ %_28.i.i, %bb3.i3.i46 ]
  %storemerge26.i.i = phi i64 [ 0, %bb13.lr.ph.i.i ], [ %11, %bb3.i3.i46 ]
  br i1 %_8.i.i.i.i.i.i, label %bb3.i3.i46, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1096
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1096
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i46

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %bb11.i.i, !noalias !1106

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb14.i.i
  store i64 0, ptr %7, align 8, !alias.scope !1093, !noalias !1107
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit.thread", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
  %10 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1112
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit.thread"

bb3.i3.i46:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1121
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_8, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1106
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1106
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_8, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1106
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %11 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %T.1
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit", label %bb13.i.i

bb11.i.i:                                         ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1093, !noalias !1122
  %_6.i.i.i.i2.i15.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i15.i.i, label %cleanup1.body.i, label %bb2.i.i.i3.i16.i.i

bb2.i.i.i3.i16.i.i:                               ; preds = %bb11.i.i
  %13 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %13, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1127
  br label %cleanup1.body.i

cleanup1.body.i:                                  ; preds = %bb2.i.i.i3.i16.i.i, %bb11.i.i
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1086
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %20, %cleanup ], [ %12, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
  %15 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %15, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1136
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit.thread": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mat, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  br label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit": ; preds = %bb3.i3.i46, %bb14.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb14.i.i ], [ %_15.i.i, %bb3.i3.i46 ]
  store i64 %_16.sroa.4.0.i, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1146
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1146
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_8, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1146
  store i64 %_9, ptr %7, align 8, !alias.scope !1093, !noalias !1147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mat, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %_0.i.not.i235 = icmp eq i64 %T.1, 0
  br i1 %_0.i.not.i235, label %bb7.preheader, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit.thread", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit"
  %16 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_65 = load i64, ptr %16, align 8, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_66 = load ptr, ptr %17, align 8, !nonnull !6
  br label %bb2.i

bb7.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3c1a1fd72fe4a4a5E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_77.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert284 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_78.pre = load ptr, ptr %.phi.trans.insert284, align 8
  %_80.not = icmp eq i64 %_77.pre, 0
  br i1 %_80.not, label %panic20.invoke, label %bb2.i54.preheader

bb2.i54.preheader:                                ; preds = %bb27, %bb7.preheader
  %_88295 = phi i64 [ %_77.pre, %bb7.preheader ], [ %_65, %bb27 ]
  %_89294 = phi ptr [ %_78.pre, %bb7.preheader ], [ %_66, %bb27 ]
  %_0.i.not.i235287293 = phi i1 [ true, %bb7.preheader ], [ false, %bb27 ]
  %18 = getelementptr inbounds nuw i8, ptr %_89294, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_89294, i64 8
  br label %bb2.i54

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb27
  %iter.sroa.0.0236 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select177, %bb27 ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.0236, %T.1
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select177 = add nuw i64 %iter.sroa.0.0236, %_0.i4.i
  %_68 = icmp ult i64 %iter.sroa.0.0236, %_65
  br i1 %_68, label %bb26, label %panic20.invoke

cleanup:                                          ; preds = %panic20.invoke
  %20 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #24
  br label %common.resume

bb10.preheader:                                   ; preds = %bb30
  br i1 %_0.i.not.i235287293, label %bb12, label %bb2.i68.lr.ph

bb2.i68.lr.ph:                                    ; preds = %bb10.preheader
  %_0.i.not.i82238 = icmp eq i64 %S.1, 0
  %_95 = getelementptr inbounds nuw i8, ptr %T.0, i64 %T.1
  %21 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_109 = getelementptr inbounds nuw i8, ptr %S.0, i64 %S.1
  %22 = getelementptr inbounds nuw i8, ptr %_44, i64 8
  br label %bb2.i68

bb2.i54:                                          ; preds = %bb2.i54.preheader, %bb30
  %iter1.sroa.0.0237 = phi i64 [ %spec.select178, %bb30 ], [ 0, %bb2.i54.preheader ]
  %_83 = load i64, ptr %18, align 8, !noundef !6
  %_86 = icmp ult i64 %iter1.sroa.0.0237, %_83
  br i1 %_86, label %bb30, label %panic20.invoke

bb10.loopexit:                                    ; preds = %bb18, %bb2.i68
  %_0.i.not.i67 = icmp ugt i64 %spec.select180, %T.1
  %or.cond186 = select i1 %_0.i3.i69, i1 true, i1 %_0.i.not.i67
  br i1 %or.cond186, label %bb12, label %bb2.i68

bb2.i68:                                          ; preds = %bb2.i68.lr.ph, %bb10.loopexit
  %iter2.sroa.0.0241 = phi i64 [ 1, %bb2.i68.lr.ph ], [ %spec.select180, %bb10.loopexit ]
  %_0.i3.i69 = icmp uge i64 %iter2.sroa.0.0241, %T.1
  %not._0.i3.i69 = xor i1 %_0.i3.i69, true
  %_0.i4.i74 = zext i1 %not._0.i3.i69 to i64
  %spec.select180 = add nuw i64 %iter2.sroa.0.0241, %_0.i4.i74
  br i1 %_0.i.not.i82238, label %bb10.loopexit, label %bb2.i83.lr.ph

bb2.i83.lr.ph:                                    ; preds = %bb2.i68
  %_41 = add i64 %iter2.sroa.0.0241, -1
  %_130 = icmp ult i64 %iter2.sroa.0.0241, %_88295
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_89294, i64 %iter2.sroa.0.0241
  %23 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %24 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_162 = icmp ult i64 %_41, %_88295
  %_56 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_89294, i64 %_41
  %25 = getelementptr inbounds nuw i8, ptr %_56, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %_56, i64 8
  br label %bb2.i83

bb12:                                             ; preds = %bb10.loopexit, %bb10.preheader
  %_91 = icmp ult i64 %T.1, %_88295
  br i1 %_91, label %bb32, label %panic20.invoke

bb32:                                             ; preds = %bb12
  %_60 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_89294, i64 %T.1
  %27 = getelementptr inbounds nuw i8, ptr %_60, i64 16
  %_181 = load i64, ptr %27, align 8, !noundef !6
  %_184 = icmp ult i64 %S.1, %_181
  br i1 %_184, label %bb65, label %panic20.invoke

bb65:                                             ; preds = %bb32
  %28 = getelementptr inbounds nuw i8, ptr %_60, i64 8
  %_182 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_59 = getelementptr inbounds nuw i32, ptr %_182, i64 %S.1
  %29 = load i32, ptr %_59, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb65, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i" ], [ 0, %bb65 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_89294, i64 %_3.sroa.0.012.i.i.i
  %30 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1170, !noalias !1173, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %31 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %32 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %32, align 8, !alias.scope !1170, !noalias !1173, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1177
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %30, %_88295
  br i1 %_7.i.i.i, label %bb4.i76, label %bb5.i.i.i

bb4.i76:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hab352d418f4da754E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %self1.i.i.i.i1.i = load i64, ptr %mat, align 8, !range !22, !alias.scope !1187, !noalias !1190, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i76
  %33 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_89294, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1192
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE.exit": ; preds = %bb4.i76, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
  br label %bb20

bb20:                                             ; preds = %start, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE.exit"
  %_0.sroa.0.0 = phi i32 [ %29, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h7bc7584ae89e2f8cE.exit" ], [ 0, %start ]
  ret i32 %_0.sroa.0.0

bb2.i83:                                          ; preds = %bb2.i83.lr.ph, %bb18
  %iter3.sroa.0.0239 = phi i64 [ 1, %bb2.i83.lr.ph ], [ %spec.select182, %bb18 ]
  %_0.i3.i84 = icmp uge i64 %iter3.sroa.0.0239, %S.1
  %not._0.i3.i84 = xor i1 %_0.i3.i84, true
  %_0.i4.i89 = zext i1 %not._0.i3.i84 to i64
  %spec.select182 = add nuw i64 %iter3.sroa.0.0239, %_0.i4.i89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %T.0, ptr %_40, align 8
  store ptr %_95, ptr %21, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_99 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %_41)
  %.not = icmp eq i64 %_99, 0
  br i1 %.not, label %bb37, label %bb35

bb37:                                             ; preds = %bb2.i83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %ptr.i.i = load ptr, ptr %_40, align 8, !alias.scope !1196, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %21, align 8, !alias.scope !1196, !nonnull !6, !noundef !6
  %_7.i.i91.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i91.not, label %bb35, label %bb14.i92

bb14.i92:                                         ; preds = %bb37
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1193, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i97, label %bb4.i93

bb4.i93:                                          ; preds = %bb14.i92
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1193, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %34 = or disjoint i32 %_34.i, %_35.i
  %_13.i94 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i94, label %bb6.i96, label %bb35

bb3.i97:                                          ; preds = %bb14.i92
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb35

bb6.i96:                                          ; preds = %bb4.i93
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1193, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %35 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb35

bb8.i:                                            ; preds = %bb6.i96
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1193, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %36 = or disjoint i32 %_27.i, %_25.i
  br label %bb35

bb35:                                             ; preds = %bb37, %bb4.i93, %bb3.i97, %bb6.i96, %bb8.i, %bb2.i83
  %_38.sroa.0.1 = phi i32 [ 1114112, %bb2.i83 ], [ %_7.i, %bb3.i97 ], [ %36, %bb8.i ], [ %35, %bb6.i96 ], [ %34, %bb4.i93 ], [ 1114112, %bb37 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_44)
  store ptr %S.0, ptr %_44, align 8
  store ptr %_109, ptr %22, align 8
  %_45 = add i64 %iter3.sroa.0.0239, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_113 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_44, i64 noundef %_45)
  %.not41 = icmp eq i64 %_113, 0
  br i1 %.not41, label %bb45, label %bb43.thread

bb45:                                             ; preds = %bb35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %ptr.i.i98 = load ptr, ptr %_44, align 8, !alias.scope !1202, !nonnull !6, !noundef !6
  %end_or_len.i.i99 = load ptr, ptr %22, align 8, !alias.scope !1202, !nonnull !6, !noundef !6
  %_7.i.i100.not = icmp eq ptr %ptr.i.i98, %end_or_len.i.i99
  br i1 %_7.i.i100.not, label %bb43.thread296, label %bb14.i101

bb14.i101:                                        ; preds = %bb45
  %x.i103 = load i8, ptr %ptr.i.i98, align 1, !noalias !1199, !noundef !6
  %_6.i104 = icmp sgt i8 %x.i103, -1
  br i1 %_6.i104, label %bb3.i137, label %bb4.i105

bb4.i105:                                         ; preds = %bb14.i101
  %_18.i.i102 = getelementptr inbounds nuw i8, ptr %ptr.i.i98, i64 1
  %_30.i106 = and i8 %x.i103, 31
  %init.i107 = zext nneg i8 %_30.i106 to i32
  %_7.i10.i108 = icmp ne ptr %_18.i.i102, %end_or_len.i.i99
  tail call void @llvm.assume(i1 %_7.i10.i108)
  %y.i110 = load i8, ptr %_18.i.i102, align 1, !noalias !1199, !noundef !6
  %_34.i111 = shl nuw nsw i32 %init.i107, 6
  %_36.i112 = and i8 %y.i110, 63
  %_35.i113 = zext nneg i8 %_36.i112 to i32
  %37 = or disjoint i32 %_34.i111, %_35.i113
  %_13.i114 = icmp samesign ugt i8 %x.i103, -33
  br i1 %_13.i114, label %bb6.i117, label %bb43

bb3.i137:                                         ; preds = %bb14.i101
  %_7.i138 = zext nneg i8 %x.i103 to i32
  br label %bb43

bb6.i117:                                         ; preds = %bb4.i105
  %_18.i12.i109 = getelementptr inbounds nuw i8, ptr %ptr.i.i98, i64 2
  %_7.i17.i118 = icmp ne ptr %_18.i12.i109, %end_or_len.i.i99
  tail call void @llvm.assume(i1 %_7.i17.i118)
  %z.i120 = load i8, ptr %_18.i12.i109, align 1, !noalias !1199, !noundef !6
  %_40.i121 = shl nuw nsw i32 %_35.i113, 6
  %_42.i122 = and i8 %z.i120, 63
  %_41.i123 = zext nneg i8 %_42.i122 to i32
  %y_z.i124 = or disjoint i32 %_40.i121, %_41.i123
  %_20.i125 = shl nuw nsw i32 %init.i107, 12
  %38 = or disjoint i32 %y_z.i124, %_20.i125
  %_21.i126 = icmp samesign ugt i8 %x.i103, -17
  br i1 %_21.i126, label %bb8.i127, label %bb43

bb8.i127:                                         ; preds = %bb6.i117
  %_18.i19.i119 = getelementptr inbounds nuw i8, ptr %ptr.i.i98, i64 3
  %_7.i24.i128 = icmp ne ptr %_18.i19.i119, %end_or_len.i.i99
  tail call void @llvm.assume(i1 %_7.i24.i128)
  %w.i130 = load i8, ptr %_18.i19.i119, align 1, !noalias !1199, !noundef !6
  %_26.i131 = shl nuw nsw i32 %init.i107, 18
  %_25.i132 = and i32 %_26.i131, 1835008
  %_46.i133 = shl nuw nsw i32 %y_z.i124, 6
  %_48.i134 = and i8 %w.i130, 63
  %_47.i135 = zext nneg i8 %_48.i134 to i32
  %_27.i136 = or disjoint i32 %_46.i133, %_47.i135
  %39 = or disjoint i32 %_27.i136, %_25.i132
  br label %bb43

bb43:                                             ; preds = %bb4.i105, %bb3.i137, %bb6.i117, %bb8.i127
  %spec.select44 = phi i32 [ %_7.i138, %bb3.i137 ], [ %39, %bb8.i127 ], [ %38, %bb6.i117 ], [ %37, %bb4.i105 ]
  %.not42 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not42, label %bb50, label %bb51

bb43.thread296:                                   ; preds = %bb45
  %.not42298 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not42298, label %bb17, label %bb16

bb43.thread:                                      ; preds = %bb35
  %.not42170 = icmp eq i32 %_38.sroa.0.1, 1114112
  br i1 %.not42170, label %bb17, label %bb16

bb51:                                             ; preds = %bb43
  %.not43 = icmp ne i32 %spec.select44, 1114112
  %40 = icmp eq i32 %_38.sroa.0.1, %spec.select44
  %or.cond = select i1 %.not43, i1 %40, i1 false
  br i1 %or.cond, label %bb17, label %bb16

bb50:                                             ; preds = %bb43
  %41 = icmp eq i32 %spec.select44, 1114112
  br i1 %41, label %bb17, label %bb16

bb16:                                             ; preds = %bb43.thread296, %bb43.thread, %bb51, %bb50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br i1 %_130, label %bb55, label %panic20.invoke

bb17:                                             ; preds = %bb43.thread296, %bb51, %bb43.thread, %bb50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_44)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  br i1 %_130, label %bb59, label %panic20.invoke

bb59:                                             ; preds = %bb17
  %_155 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_154 = load i64, ptr %24, align 8, !noundef !6
  %_157 = icmp ult i64 %_45, %_154
  br i1 %_157, label %bb60, label %panic20.invoke

bb60:                                             ; preds = %bb59
  %_52 = getelementptr inbounds nuw i32, ptr %_155, i64 %_45
  %_51 = load i32, ptr %_52, align 4, !noundef !6
  br i1 %_162, label %bb61, label %panic20.invoke

bb61:                                             ; preds = %bb60
  %_164 = load i64, ptr %25, align 8, !noundef !6
  %_167 = icmp ult i64 %_45, %_164
  br i1 %_167, label %bb62, label %panic20.invoke

bb62:                                             ; preds = %bb61
  %_179 = icmp ult i64 %iter3.sroa.0.0239, %_154
  br i1 %_179, label %bb64, label %panic20.invoke

bb64:                                             ; preds = %bb62
  %_165 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_55 = getelementptr inbounds nuw i32, ptr %_165, i64 %_45
  %_54 = load i32, ptr %_55, align 4, !noundef !6
  %_57 = getelementptr inbounds nuw i32, ptr %_155, i64 %iter3.sroa.0.0239
  %42 = add i32 %_54, %_51
  store i32 %42, ptr %_57, align 4
  br label %bb18

bb18:                                             ; preds = %bb58, %bb64
  %_0.i.not.i82 = icmp ugt i64 %spec.select182, %S.1
  %or.cond187 = select i1 %_0.i3.i84, i1 true, i1 %_0.i.not.i82
  br i1 %or.cond187, label %bb10.loopexit, label %bb2.i83

bb55:                                             ; preds = %bb16
  %_133 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_132 = load i64, ptr %24, align 8, !noundef !6
  %_135 = icmp ult i64 %_45, %_132
  br i1 %_135, label %bb56, label %panic20.invoke

bb56:                                             ; preds = %bb55
  %_147 = icmp ult i64 %iter3.sroa.0.0239, %_132
  br i1 %_147, label %bb58, label %panic20.invoke

bb58:                                             ; preds = %bb56
  %_47 = getelementptr inbounds nuw i32, ptr %_133, i64 %_45
  %_46 = load i32, ptr %_47, align 4, !noundef !6
  %_49 = getelementptr inbounds nuw i32, ptr %_133, i64 %iter3.sroa.0.0239
  store i32 %_46, ptr %_49, align 4
  br label %bb18

bb30:                                             ; preds = %bb2.i54
  %_0.i3.i55 = icmp uge i64 %iter1.sroa.0.0237, %S.1
  %not._0.i3.i55 = xor i1 %_0.i3.i55, true
  %_0.i4.i60 = zext i1 %not._0.i3.i55 to i64
  %spec.select178 = add nuw i64 %iter1.sroa.0.0237, %_0.i4.i60
  %_84 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_24 = getelementptr inbounds nuw i32, ptr %_84, i64 %iter1.sroa.0.0237
  store i32 1, ptr %_24, align 4
  %_0.i.not.i53 = icmp ugt i64 %spec.select178, %S.1
  %or.cond185 = select i1 %_0.i3.i55, i1 true, i1 %_0.i.not.i53
  br i1 %or.cond185, label %bb10.preheader, label %bb2.i54

bb26:                                             ; preds = %bb2.i
  %_17 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_66, i64 %iter.sroa.0.0236
  %43 = getelementptr inbounds nuw i8, ptr %_17, i64 16
  %_71 = load i64, ptr %43, align 8, !noundef !6
  %_74.not = icmp eq i64 %_71, 0
  br i1 %_74.not, label %panic20.invoke, label %bb27

bb27:                                             ; preds = %bb26
  %44 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %_72 = load ptr, ptr %44, align 8, !nonnull !6, !noundef !6
  store i32 0, ptr %_72, align 4
  %_0.i.not.i = icmp ugt i64 %spec.select177, %T.1
  %or.cond184 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond184, label %bb2.i54.preheader, label %bb2.i

panic20.invoke:                                   ; preds = %bb26, %bb2.i, %bb2.i54, %bb56, %bb55, %bb16, %bb62, %bb61, %bb60, %bb59, %bb17, %bb7.preheader, %bb32, %bb12
  %45 = phi i64 [ %T.1, %bb12 ], [ %S.1, %bb32 ], [ 0, %bb7.preheader ], [ %iter2.sroa.0.0241, %bb17 ], [ %_45, %bb59 ], [ %_41, %bb60 ], [ %_45, %bb61 ], [ %iter3.sroa.0.0239, %bb62 ], [ %iter2.sroa.0.0241, %bb16 ], [ %_45, %bb55 ], [ %iter3.sroa.0.0239, %bb56 ], [ %iter1.sroa.0.0237, %bb2.i54 ], [ %iter.sroa.0.0236, %bb2.i ], [ 0, %bb26 ]
  %46 = phi i64 [ %_88295, %bb12 ], [ %_181, %bb32 ], [ 0, %bb7.preheader ], [ %_88295, %bb17 ], [ %_154, %bb59 ], [ %_88295, %bb60 ], [ %_164, %bb61 ], [ %_154, %bb62 ], [ %_88295, %bb16 ], [ %_132, %bb55 ], [ %_132, %bb56 ], [ %_83, %bb2.i54 ], [ %_65, %bb2.i ], [ 0, %bb26 ]
  %47 = phi ptr [ @alloc_dbeca339df116ba97f2493a055f85555, %bb12 ], [ @alloc_04674294953e431463b0e626f04068d7, %bb32 ], [ @alloc_a85f843388eafb43ee3e9ec534da462a, %bb7.preheader ], [ @alloc_ea421f44397ac36eec8ddae5d85f8a69, %bb17 ], [ @alloc_9b67f796afe6fa84d2d3c396f8648fc9, %bb59 ], [ @alloc_93abb739713526d59ea81e49c9cc2087, %bb60 ], [ @alloc_9201997efb1bb4885b312ad48cf176c1, %bb61 ], [ @alloc_47ac06c8c00465b740eb5a3917a1d414, %bb62 ], [ @alloc_87f7874e54d9d1937ac7379ed22425dc, %bb16 ], [ @alloc_cf3124b6416a13719f41450e195cd192, %bb55 ], [ @alloc_df8317cfe2b8e5d493681f9b19e5dd3e, %bb56 ], [ @alloc_a685a6f90158416d8ea2cf46d8015334, %bb2.i54 ], [ @alloc_fcd2d6e1b70d7f01b5d57430105247e1, %bb2.i ], [ @alloc_13df6837543cf95af1adb046a35438c2, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %45, i64 noundef %46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %47) #22
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable
}
