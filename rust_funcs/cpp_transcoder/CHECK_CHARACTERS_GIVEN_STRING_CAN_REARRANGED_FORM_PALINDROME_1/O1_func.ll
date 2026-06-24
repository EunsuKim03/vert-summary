define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %c = alloca [4 x i8], align 4
  %set = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %set)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %_3.i.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i.i, align 8, !range !3, !noalias !2050, !noundef !4
  %_4.i.i.i1.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i1.i.i.i, label %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit", label %bb2.i.i.i.i.i.i, !prof !1682

bb2.i.i.i.i.i.i:                                  ; preds = %start
; invoke std::sys::random::linux::hashmap_random_keys
  %1 = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i.i.i.i.i.i
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 8
  store i64 %2, ptr %_3.i.i.i.i.i, align 8, !noalias !2064
  store i64 %3, ptr %4, align 8, !noalias !2064
  store i8 1, ptr %_12.i.i.i.i.i.i, align 8, !noalias !2064
  br label %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit"

"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit": ; preds = %start, %.noexc
  %_9.i.i.i.i.i.i = load i64, ptr %_3.i.i.i.i.i, align 8, !noalias !2067, !noundef !4
  %5 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i, i64 8
  %_10.i.i.i.i.i.i = load i64, ptr %5, align 8, !noalias !2067, !noundef !4
  %_4.i.i.i.i.i.i = add i64 %_9.i.i.i.i.i.i, 1
  store i64 %_4.i.i.i.i.i.i, ptr %_3.i.i.i.i.i, align 8, !noalias !2067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %set, ptr noundef nonnull align 8 dereferenceable(32) @anon.faf6f5ceec9f3955f7678f503c36246b.0, i64 32, i1 false)
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %set, i64 32
  store i64 %_9.i.i.i.i.i.i, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !2047
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %set, i64 40
  store i64 %_10.i.i.i.i.i.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !2047
  %6 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %6, align 8, !alias.scope !2068, !nonnull !4, !noundef !4
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %7, align 8, !alias.scope !2068, !noundef !4
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  br label %bb5

bb35:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %9, %cleanup1 ], [ %8, %cleanup ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE"(ptr noalias noundef align 8 dereferenceable(24) %str) #35
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %bb2.i.i.i.i.i.i
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb35

cleanup1:                                         ; preds = %bb13
  %9 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef align 8 dereferenceable(48) %set) #35
  br label %bb35

bb5:                                              ; preds = %bb5.backedge, %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit"
  %iter.sroa.0.0 = phi ptr [ %_6.i.i, %"_ZN3std11collections4hash3set16HashSet$LT$T$GT$3new17h262ff5ef219f3cecE.exit" ], [ %iter.sroa.0.2, %bb5.backedge ]
  %_7.i.i.i = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select.idx
  br i1 %_7.i.i.i, label %bb14.i.i, label %bb6

bb14.i.i:                                         ; preds = %bb5
  %x.i.i = load i8, ptr %iter.sroa.0.0, align 1, !noalias !2073, !noundef !4
  %_6.i.i4 = icmp sgt i8 %x.i.i, -1
  br i1 %_6.i.i4, label %bb3.i.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %bb14.i.i
  %_30.i.i = and i8 %x.i.i, 31
  %init.i.i = zext nneg i8 %_30.i.i to i32
  %_7.i10.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i)
  %_18.i12.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %y.i.i = load i8, ptr %spec.select, align 1, !noalias !2073, !noundef !4
  %_34.i.i = shl nuw nsw i32 %init.i.i, 6
  %_36.i.i = and i8 %y.i.i, 63
  %_35.i.i = zext nneg i8 %_36.i.i to i32
  %10 = or disjoint i32 %_34.i.i, %_35.i.i
  %_13.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_13.i.i, label %bb6.i.i, label %bb6

bb3.i.i:                                          ; preds = %bb14.i.i
  %_7.i.i = zext nneg i8 %x.i.i to i32
  br label %bb6

bb6.i.i:                                          ; preds = %bb4.i.i
  %_7.i17.i.i = icmp ne ptr %_18.i12.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i)
  %_18.i19.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %z.i.i = load i8, ptr %_18.i12.i.i, align 1, !noalias !2073, !noundef !4
  %_40.i.i = shl nuw nsw i32 %_35.i.i, 6
  %_42.i.i = and i8 %z.i.i, 63
  %_41.i.i = zext nneg i8 %_42.i.i to i32
  %y_z.i.i = or disjoint i32 %_40.i.i, %_41.i.i
  %_20.i.i = shl nuw nsw i32 %init.i.i, 12
  %11 = or disjoint i32 %y_z.i.i, %_20.i.i
  %_21.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_21.i.i, label %bb8.i.i, label %bb6

bb8.i.i:                                          ; preds = %bb6.i.i
  %_7.i24.i.i = icmp ne ptr %_18.i19.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i)
  %_18.i26.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %w.i.i = load i8, ptr %_18.i19.i.i, align 1, !noalias !2073, !noundef !4
  %_26.i.i = shl nuw nsw i32 %init.i.i, 18
  %_25.i.i = and i32 %_26.i.i, 1835008
  %_46.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_48.i.i = and i8 %w.i.i, 63
  %_47.i.i = zext nneg i8 %_48.i.i to i32
  %_27.i.i = or disjoint i32 %_46.i.i, %_47.i.i
  %12 = or disjoint i32 %_27.i.i, %_25.i.i
  br label %bb6

bb6:                                              ; preds = %bb8.i.i, %bb6.i.i, %bb3.i.i, %bb4.i.i, %bb5
  %iter.sroa.0.2 = phi ptr [ %spec.select, %bb5 ], [ %spec.select, %bb3.i.i ], [ %_18.i26.i.i, %bb8.i.i ], [ %_18.i19.i.i, %bb6.i.i ], [ %_18.i12.i.i, %bb4.i.i ]
  %spec.select.i = phi i32 [ 1114112, %bb5 ], [ %_7.i.i, %bb3.i.i ], [ %12, %bb8.i.i ], [ %11, %bb6.i.i ], [ %10, %bb4.i.i ]
  %.not = icmp eq i32 %spec.select.i, 1114112
  br i1 %.not, label %bb9, label %bb8

bb8:                                              ; preds = %bb6
  store i32 %spec.select.i, ptr %c, align 4
; call hashbrown::map::HashMap<K,V,S,A>::contains_key
  %_0.i = call noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12contains_key17hb449a1137405fcfcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %set, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %c)
  br i1 %_0.i, label %bb11, label %bb13

bb9:                                              ; preds = %bb6
  %_0.i5 = load i64, ptr %7, align 8, !alias.scope !2078, !noundef !4
  %_2.i = icmp sgt i64 %_0.i5, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_21 = and i64 %_0.i5, 1
  %_20 = icmp eq i64 %_21, 0
  %13 = getelementptr inbounds nuw i8, ptr %set, i64 24
  %_2.i6 = load i64, ptr %13, align 8, !noundef !4
  br i1 %_20, label %bb17, label %bb24

bb17:                                             ; preds = %bb9
  %_0.i7 = icmp eq i64 %_2.i6, 0
  br i1 %_0.i7, label %bb27, label %bb31

bb24:                                             ; preds = %bb9
  %_30 = icmp eq i64 %_2.i6, 1
  br i1 %_30, label %bb27, label %bb31

bb31:                                             ; preds = %bb17, %bb24, %bb27
  %_0.sroa.0.0 = phi i32 [ 1, %bb27 ], [ 0, %bb24 ], [ 0, %bb17 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %14 = getelementptr inbounds nuw i8, ptr %set, i64 8
  %_6.i.i.i.i.i.i = load i64, ptr %14, align 8, !alias.scope !2099, !noundef !4
  %_4.i.i.i.i.i.i11 = icmp eq i64 %_6.i.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i.i11, label %bb32, label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb31
  %_10.i.i.i.i.i.i12 = add i64 %_6.i.i.i.i.i.i, 1
  %_32.1.i.i.i.i.i.i.i = icmp ult i64 %_10.i.i.i.i.i.i12, 4611686018427387901
  tail call void @llvm.assume(i1 %_32.1.i.i.i.i.i.i.i)
  %_25.0.i.i.i.i.i.i.i = shl nuw i64 %_10.i.i.i.i.i.i12, 2
  %_32.0.i.i.i.i.i.i.i = add i64 %_25.0.i.i.i.i.i.i.i, 15
  %ctrl_offset.i.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_19.i.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i.i, label %bb32, label %bb1.i2.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i:                               ; preds = %bb1.i.i.i.i.i.i
  %self1.i.i.i.i.i.i = load ptr, ptr %set, align 8, !alias.scope !2099, !nonnull !4, !noundef !4
  %_18.i.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i.i
  %ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i.i, i64 %_18.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #32, !noalias !2099
  br label %bb32

bb27:                                             ; preds = %bb24, %bb17
  br label %bb31

bb32:                                             ; preds = %bb1.i2.i.i.i.i.i.i, %bb1.i.i.i.i.i.i, %bb31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %set)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb32
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

common.resume:                                    ; preds = %bb35, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup.i.i ], [ %.pn, %bb35 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit": ; preds = %bb32
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb8
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %_5.i14 = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h872682af38f14043E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, i32 noundef range(i32 0, 1114112) %spec.select.i)
          to label %bb5.backedge unwind label %cleanup1

bb5.backedge:                                     ; preds = %bb13, %bb11
  br label %bb5

bb11:                                             ; preds = %bb8
; call hashbrown::map::HashMap<K,V,S,A>::remove_entry
  %17 = call noundef i32 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h19595892a878febaE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %c)
  br label %bb5.backedge

terminate:                                        ; preds = %bb35
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable
}
