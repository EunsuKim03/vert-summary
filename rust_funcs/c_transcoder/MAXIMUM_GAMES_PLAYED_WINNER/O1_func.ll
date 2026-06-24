define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_36 = alloca [4 x i8], align 4
  %_30 = alloca [4 x i8], align 4
  %_20 = alloca [4 x i8], align 4
  %_14 = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %_3.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i, align 8, !range !54, !noalias !1886, !noundef !8
  %_4.i.i.i1.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i1.i, label %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit", label %bb2.i.i.i.i, !prof !52

bb2.i.i.i.i:                                      ; preds = %start
; call std::sys::random::linux::hashmap_random_keys
  %1 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE(), !noalias !1898
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  store i64 %2, ptr %_3.i.i.i, align 8, !noalias !1898
  store i64 %3, ptr %4, align 8, !noalias !1898
  store i8 1, ptr %_12.i.i.i.i, align 8, !noalias !1898
  br label %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit"

"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit": ; preds = %start, %bb2.i.i.i.i
  %_9.i.i.i.i = load i64, ptr %_3.i.i.i, align 8, !noalias !1901, !noundef !8
  %5 = getelementptr inbounds nuw i8, ptr %_3.i.i.i, i64 8
  %_10.i.i.i.i = load i64, ptr %5, align 8, !noalias !1901, !noundef !8
  %_4.i.i.i.i = add i64 %_9.i.i.i.i, 1
  store i64 %_4.i.i.i.i, ptr %_3.i.i.i, align 8, !noalias !1901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %dp, ptr noundef nonnull align 8 dereferenceable(32) @anon.7a906972c673e89958c2969de4f8eb3e.0, i64 32, i1 false)
  %_2.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %dp, i64 32
  store i64 %_9.i.i.i.i, ptr %_2.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1883
  %_2.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %dp, i64 40
  store i64 %_10.i.i.i.i, ptr %_2.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1883
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %6 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef 0, i32 noundef 1)
          to label %bb2 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb14
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb2.i.invoke, %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit", %bb2
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %7 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i = load i64, ptr %7, align 8, !alias.scope !1917, !noundef !8
  %_4.i.i.i.i.i = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i, label %bb20, label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %cleanup
  %_10.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 1
  %or.cond.i.i.i.i = icmp ult i64 %_10.i.i.i.i.i, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i)
  %_25.0.i.i.i.i.i.i = shl nuw i64 %_10.i.i.i.i.i, 3
  %_32.0.i.i.i.i.i.i = add i64 %_25.0.i.i.i.i.i.i, 15
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %bb20, label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %dp, align 8, !alias.scope !1917, !nonnull !8, !noundef !8
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !1917
  br label %bb20

bb2:                                              ; preds = %"_ZN3std11collections4hash3map20HashMap$LT$K$C$V$GT$3new17hfd1883de9fe6b1e7E.exit"
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %8 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef 1, i32 noundef 2)
          to label %bb4.preheader unwind label %cleanup.loopexit.split-lp

bb4.preheader:                                    ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_14)
  store i32 1, ptr %_14, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_1149 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_14)
  %.not.i1550 = icmp eq ptr %_1149, null
  br i1 %.not.i1550, label %bb2.i.invoke, label %bb6, !prof !1918

bb6:                                              ; preds = %bb4.preheader, %bb16
  %_1152 = phi ptr [ %_11, %bb16 ], [ %_1149, %bb4.preheader ]
  %9 = phi i32 [ %i.sroa.0.051, %bb16 ], [ 1, %bb4.preheader ]
  %i.sroa.0.051 = phi i32 [ %14, %bb16 ], [ 2, %bb4.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_20)
  %10 = add i32 %i.sroa.0.051, -2
  store i32 %10, ptr %_20, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_17 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_20)
  %.not.i11 = icmp eq ptr %_17, null
  br i1 %.not.i11, label %bb2.i.invoke, label %bb8, !prof !53

bb8:                                              ; preds = %bb6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  %self1.i = load i32, ptr %_1152, align 4, !alias.scope !1919, !noalias !1922, !noundef !8
  %other2.i = load i32, ptr %_17, align 4, !alias.scope !1922, !noalias !1919, !noundef !8
  %_5.0.i = add i32 %other2.i, %self1.i
  %_8.not = icmp sgt i32 %_5.0.i, %N
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_14)
  br i1 %_8.not, label %bb17, label %bb10

bb17:                                             ; preds = %bb8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1936)
  %11 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i22 = load i64, ptr %11, align 8, !alias.scope !1939, !noundef !8
  %_4.i.i.i.i.i23 = icmp eq i64 %_6.i.i.i.i.i22, 0
  br i1 %_4.i.i.i.i.i23, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39", label %bb1.i.i.i.i.i24

bb1.i.i.i.i.i24:                                  ; preds = %bb17
  %_10.i.i.i.i.i25 = add i64 %_6.i.i.i.i.i22, 1
  %or.cond.i.i.i.i26 = icmp ult i64 %_10.i.i.i.i.i25, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i26)
  %_25.0.i.i.i.i.i.i27 = shl nuw i64 %_10.i.i.i.i.i25, 3
  %_32.0.i.i.i.i.i.i28 = add i64 %_25.0.i.i.i.i.i.i27, 15
  %ctrl_offset.i.i.i.i.i.i29 = and i64 %_32.0.i.i.i.i.i.i28, -16
  %rhs5.i.i.i.i.i.i30 = add i64 %_6.i.i.i.i.i22, 17
  %_37.0.i.i.i.i.i.i31 = add i64 %rhs5.i.i.i.i.i.i30, %ctrl_offset.i.i.i.i.i.i29
  %_37.1.i.i.i.i.i.i32 = icmp uge i64 %_37.0.i.i.i.i.i.i31, %ctrl_offset.i.i.i.i.i.i29
  %_19.i.i.i.i.i.i33 = icmp ult i64 %_37.0.i.i.i.i.i.i31, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i32)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i33)
  %_4.not.i.i.i.i.i.i34 = icmp eq i64 %_37.0.i.i.i.i.i.i31, 0
  br i1 %_4.not.i.i.i.i.i.i34, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39", label %bb1.i2.i.i.i.i.i35

bb1.i2.i.i.i.i.i35:                               ; preds = %bb1.i.i.i.i.i24
  %self1.i.i.i.i.i36 = load ptr, ptr %dp, align 8, !alias.scope !1939, !nonnull !8, !noundef !8
  %_18.i.i.i.i.i37 = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i29
  %ptr.i.i.i.i.i38 = getelementptr inbounds i8, ptr %self1.i.i.i.i.i36, i64 %_18.i.i.i.i.i37
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i38, i64 noundef %_37.0.i.i.i.i.i.i31, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !1939
  br label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39"

"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit39": ; preds = %bb17, %bb1.i.i.i.i.i24, %bb1.i2.i.i.i.i.i35
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dp)
  ret i32 %10

bb10:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_30)
  store i32 %9, ptr %_30, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_27 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_30)
  %.not.i7 = icmp eq ptr %_27, null
  br i1 %.not.i7, label %bb2.i.invoke, label %bb12, !prof !53

bb12:                                             ; preds = %bb10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_36)
  store i32 %10, ptr %_36, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_33 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_36)
  %.not.i = icmp eq ptr %_33, null
  br i1 %.not.i, label %bb2.i.invoke, label %bb14, !prof !53

bb2.i.invoke:                                     ; preds = %bb12, %bb10, %bb6, %bb16, %bb4.preheader
  %12 = phi ptr [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb4.preheader ], [ @alloc_848a8850280af43732882781277670ff, %bb12 ], [ @alloc_92d6528911e7980a8c7d58abe4cdd652, %bb10 ], [ @alloc_70a99ab46af915d240a8ccdd1b306a78, %bb6 ], [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb16 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #29
          to label %bb2.i.cont unwind label %cleanup.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb14:                                             ; preds = %bb12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %self1.i40 = load i32, ptr %_27, align 4, !alias.scope !1940, !noalias !1943, !noundef !8
  %other2.i41 = load i32, ptr %_33, align 4, !alias.scope !1943, !noalias !1940, !noundef !8
  %_5.0.i42 = add i32 %other2.i41, %self1.i40
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  %13 = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %dp, i32 noundef %i.sroa.0.051, i32 noundef %_5.0.i42)
          to label %bb16 unwind label %cleanup.loopexit

bb16:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_30)
  %14 = add i32 %i.sroa.0.051, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_14)
  store i32 %i.sroa.0.051, ptr %_14, align 4
; call std::collections::hash::map::HashMap<K,V,S>::get
  %_11 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN3std11collections4hash3map24HashMap$LT$K$C$V$C$S$GT$3get17h1abbfc889363e7eeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_14)
  %.not.i15 = icmp eq ptr %_11, null
  br i1 %.not.i15, label %bb2.i.invoke, label %bb6, !prof !1945

bb20:                                             ; preds = %bb1.i2.i.i.i.i.i, %bb1.i.i.i.i.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
