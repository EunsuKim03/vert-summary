define noundef i32 @f_gold(i32 noundef %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_29 = alloca [4 x i8], align 4
  %_24 = alloca [4 x i8], align 4
  %_16 = alloca [4 x i8], align 4
  %_11 = alloca [4 x i8], align 4
  %dp = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dp)
  %_3.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i, align 8, !range !1258, !noalias !1259, !noundef !23
  %_4.i.i.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i.i.i, label %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i", !prof !1074

start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i: ; preds = %start
  %_9.i.pre.i.i = load i64, ptr %_3.i.i.i.i, align 8, !noalias !1268
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 8
  %_10.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1268
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i": ; preds = %start
; call std::sys::random::linux::hashmap_random_keys
  %1 = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE(), !noalias !1269
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i, i64 8
  store i64 %3, ptr %4, align 8, !noalias !1269
  store i8 1, ptr %_12.i.i.i.i.i, align 8, !noalias !1269
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit": ; preds = %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i"
  %_31.1.pre-phi = phi i64 [ %_10.i.pre.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i ], [ %3, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i" ]
  %_9.i.i.i = phi i64 [ %_9.i.pre.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h2c588f9833ffad73E.exit_crit_edge.i.i ], [ %2, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2164e0f9696029b0E.exit.i.i" ]
  %_4.i.i.i = add i64 %_9.i.i.i, 1
  store i64 %_4.i.i.i, ptr %_3.i.i.i.i, align 8, !noalias !1268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %dp, ptr noundef nonnull align 8 dereferenceable(32) @anon.ad32c29cb125f5cd8d3adf20e3ffdf46.0, i64 32, i1 false)
  %_32.sroa.4.0.dp.sroa_idx = getelementptr inbounds nuw i8, ptr %dp, i64 32
  store i64 %_9.i.i.i, ptr %_32.sroa.4.0.dp.sroa_idx, align 8
  %_32.sroa.5.0.dp.sroa_idx = getelementptr inbounds nuw i8, ptr %dp, i64 40
  store i64 %_31.1.pre-phi, ptr %_32.sroa.5.0.dp.sroa_idx, align 8
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef 0, i32 noundef 1)
          to label %bb8 unwind label %cleanup.loopexit.split-lp

cleanup.loopexit:                                 ; preds = %bb23
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit", %bb8, %bb12.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i = load i64, ptr %5, align 8, !alias.scope !1287, !noundef !23
  %_4.i.i.i.i.i10 = icmp eq i64 %_6.i.i.i.i.i, 0
  br i1 %_4.i.i.i.i.i10, label %bb6, label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %cleanup
  %_10.i.i.i.i.i = shl i64 %_6.i.i.i.i.i, 3
  %_32.0.i.i.i.i.i.i = add i64 %_10.i.i.i.i.i, 23
  %ctrl_offset.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i, 17
  %_37.0.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i
  %_19.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i, label %bb6, label %bb1.i2.i.i.i.i.i

bb1.i2.i.i.i.i.i:                                 ; preds = %bb1.i.i.i.i.i
  %self1.i.i.i.i.i = load ptr, ptr %dp, align 8, !alias.scope !1287, !nonnull !23, !noundef !23
  %_18.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i
  %ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i, i64 %_18.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1287
  br label %bb6

bb8:                                              ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h8b0e374463f7b52fE.exit"
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef 1, i32 noundef 2)
          to label %bb1.preheader unwind label %cleanup.loopexit.split-lp

bb1.preheader:                                    ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_11)
  store i32 1, ptr %_11, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %6 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_11)
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb12.invoke, label %bb13, !prof !1288

bb13:                                             ; preds = %bb1.preheader, %bb25
  %7 = phi ptr [ %16, %bb25 ], [ %6, %bb1.preheader ]
  %8 = phi i32 [ %i.sroa.0.032, %bb25 ], [ 1, %bb1.preheader ]
  %i.sroa.0.032 = phi i32 [ %15, %bb25 ], [ 2, %bb1.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_16)
  %9 = add i32 %i.sroa.0.032, -2
  store i32 %9, ptr %_16, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %10 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_16)
  %.not7 = icmp eq ptr %10, null
  br i1 %.not7, label %bb12.invoke, label %bb16, !prof !909

bb12.invoke:                                      ; preds = %bb20, %bb2, %bb13, %bb25, %bb1.preheader
  %11 = phi ptr [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb1.preheader ], [ @alloc_259fc6b6cbee0e44773f194fbbadbd4a, %bb25 ], [ @alloc_70a99ab46af915d240a8ccdd1b306a78, %bb13 ], [ @alloc_92d6528911e7980a8c7d58abe4cdd652, %bb2 ], [ @alloc_848a8850280af43732882781277670ff, %bb20 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #22
          to label %bb12.cont unwind label %cleanup.loopexit.split-lp

bb12.cont:                                        ; preds = %bb12.invoke
  unreachable

bb16:                                             ; preds = %bb13
  %_42 = load i32, ptr %7, align 4, !noundef !23
  %_43 = load i32, ptr %10, align 4, !noundef !23
  %_44.0 = add i32 %_43, %_42
  %_6.not = icmp sgt i32 %_44.0, %N
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_11)
  br i1 %_6.not, label %bb3, label %bb2

bb3:                                              ; preds = %bb16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %12 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_6.i.i.i.i.i11 = load i64, ptr %12, align 8, !alias.scope !1304, !noundef !23
  %_4.i.i.i.i.i12 = icmp eq i64 %_6.i.i.i.i.i11, 0
  br i1 %_4.i.i.i.i.i12, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26", label %bb1.i.i.i.i.i13

bb1.i.i.i.i.i13:                                  ; preds = %bb3
  %_10.i.i.i.i.i14 = shl i64 %_6.i.i.i.i.i11, 3
  %_32.0.i.i.i.i.i.i15 = add i64 %_10.i.i.i.i.i14, 23
  %ctrl_offset.i.i.i.i.i.i16 = and i64 %_32.0.i.i.i.i.i.i15, -16
  %rhs5.i.i.i.i.i.i17 = add i64 %_6.i.i.i.i.i11, 17
  %_37.0.i.i.i.i.i.i18 = add i64 %rhs5.i.i.i.i.i.i17, %ctrl_offset.i.i.i.i.i.i16
  %_37.1.i.i.i.i.i.i19 = icmp uge i64 %_37.0.i.i.i.i.i.i18, %ctrl_offset.i.i.i.i.i.i16
  %_19.i.i.i.i.i.i20 = icmp ult i64 %_37.0.i.i.i.i.i.i18, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i19)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i20)
  %_4.not.i.i.i.i.i.i21 = icmp eq i64 %_37.0.i.i.i.i.i.i18, 0
  br i1 %_4.not.i.i.i.i.i.i21, label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26", label %bb1.i2.i.i.i.i.i22

bb1.i2.i.i.i.i.i22:                               ; preds = %bb1.i.i.i.i.i13
  %self1.i.i.i.i.i23 = load ptr, ptr %dp, align 8, !alias.scope !1304, !nonnull !23, !noundef !23
  %_18.i.i.i.i.i24 = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i16
  %ptr.i.i.i.i.i25 = getelementptr inbounds i8, ptr %self1.i.i.i.i.i23, i64 %_18.i.i.i.i.i24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i25, i64 noundef %_37.0.i.i.i.i.i.i18, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1304
  br label %"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26"

"_ZN4core3ptr74drop_in_place$LT$std..collections..hash..map..HashMap$LT$i32$C$i32$GT$$GT$17haecec49db4630a32E.exit26": ; preds = %bb3, %bb1.i.i.i.i.i13, %bb1.i2.i.i.i.i.i22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dp)
  ret i32 %9

bb2:                                              ; preds = %bb16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_24)
  store i32 %8, ptr %_24, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %13 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_24)
  %.not8 = icmp eq ptr %13, null
  br i1 %.not8, label %bb12.invoke, label %bb20, !prof !909

bb20:                                             ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_29)
  store i32 %9, ptr %_29, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %14 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_29)
  %.not9 = icmp eq ptr %14, null
  br i1 %.not9, label %bb12.invoke, label %bb23, !prof !909

bb23:                                             ; preds = %bb20
  %_51 = load i32, ptr %13, align 4, !noundef !23
  %_52 = load i32, ptr %14, align 4, !noundef !23
  %_53.0 = add i32 %_52, %_51
; invoke hashbrown::map::HashMap<K,V,S,A>::insert
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h3f2ebe8d303a8ca8E"(ptr noalias noundef align 8 dereferenceable(48) %dp, i32 noundef %i.sroa.0.032, i32 noundef %_53.0)
          to label %bb25 unwind label %cleanup.loopexit

bb25:                                             ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_24)
  %15 = add i32 %i.sroa.0.032, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_11)
  store i32 %i.sroa.0.032, ptr %_11, align 4
; call hashbrown::map::HashMap<K,V,S,A>::get
  %16 = call fastcc noundef align 4 dereferenceable_or_null(4) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$3get17hde3daca946872274E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %dp, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %_11)
  %.not = icmp eq ptr %16, null
  br i1 %.not, label %bb12.invoke, label %bb13, !prof !1305

bb6:                                              ; preds = %bb1.i2.i.i.i.i.i, %bb1.i.i.i.i.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
