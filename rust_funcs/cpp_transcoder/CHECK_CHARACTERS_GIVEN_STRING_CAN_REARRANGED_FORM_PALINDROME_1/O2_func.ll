define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %set = alloca [48 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %set)
  %_3.i.i.i.i.i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h80d8e1569169cac2E")
  %_12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 16
  %0 = load i8, ptr %_12.i.i.i.i.i.i.i, align 8, !range !1183, !noalias !1184, !noundef !19
  %_4.i.i.i.i.i.i.i = trunc nuw i8 %0 to i1
  br i1 %_4.i.i.i.i.i.i.i, label %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i", !prof !1175

start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i: ; preds = %start
  %_9.i.pre.i.i.i.i = load i64, ptr %_3.i.i.i.i.i.i, align 8, !noalias !1195
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 8
  %_10.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !1195
  br label %bb21

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i": ; preds = %start
; invoke std::sys::random::linux::hashmap_random_keys
  %1 = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17h6146797cc86fe2ccE()
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i"
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  %4 = getelementptr inbounds nuw i8, ptr %_3.i.i.i.i.i.i, i64 8
  store i64 %3, ptr %4, align 8, !noalias !1196
  store i8 1, ptr %_12.i.i.i.i.i.i.i, align 8, !noalias !1196
  br label %bb21

bb19:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %15, %cleanup1 ], [ %6, %cleanup ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1214, !alias.scope !1215, !noalias !1218, !noundef !19
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb20, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb19
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %5, align 8, !alias.scope !1215, !noalias !1218, !nonnull !19, !noundef !19
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1220
  br label %bb20

cleanup:                                          ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hb2b447367241d6bdE.exit.i.i.i.i"
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

bb21:                                             ; preds = %.noexc, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i
  %hash_builder.1.pre-phi.i = phi i64 [ %_10.i.pre.i.i.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i ], [ %3, %.noexc ]
  %_9.i.i.i.i.i = phi i64 [ %_9.i.pre.i.i.i.i, %start._ZN4core3ops8function6FnOnce9call_once17h754dc77a8ea850c3E.exit_crit_edge.i.i.i.i ], [ %2, %.noexc ]
  %_4.i.i.i.i.i = add i64 %_9.i.i.i.i.i, 1
  store i64 %_4.i.i.i.i.i, ptr %_3.i.i.i.i.i.i, align 8, !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %set, ptr noundef nonnull align 8 dereferenceable(32) @anon.af93e97423fececea64614ca03819712.0, i64 32, i1 false)
  %_20.sroa.4.0.set.sroa_idx = getelementptr inbounds nuw i8, ptr %set, i64 32
  store i64 %_9.i.i.i.i.i, ptr %_20.sroa.4.0.set.sroa_idx, align 8
  %_20.sroa.5.0.set.sroa_idx = getelementptr inbounds nuw i8, ptr %set, i64 40
  store i64 %hash_builder.1.pre-phi.i, ptr %_20.sroa.5.0.set.sroa_idx, align 8
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_25 = load ptr, ptr %7, align 8, !nonnull !19, !noundef !19
  %8 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_24 = load i64, ptr %8, align 8, !noundef !19
  %_32 = getelementptr inbounds nuw i8, ptr %_25, i64 %_24
  %_7.i.i54 = icmp samesign eq i64 %_24, 0
  br i1 %_7.i.i54, label %bb16, label %bb14.i.lr.ph

bb14.i.lr.ph:                                     ; preds = %bb21
  %9 = getelementptr inbounds nuw i8, ptr %set, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %set, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %set, i64 16
  br label %bb14.i

bb14.i:                                           ; preds = %bb14.i.lr.ph, %bb5
  %_38.i.i.i69 = phi ptr [ @alloc_d0776666182ad032bd1011cf266e2f3a, %bb14.i.lr.ph ], [ %_38.i.i.i70, %bb5 ]
  %_35.i.i.i66 = phi i64 [ 0, %bb14.i.lr.ph ], [ %_35.i.i.i67, %bb5 ]
  %_29.i.i.i.i.i = phi ptr [ @alloc_d0776666182ad032bd1011cf266e2f3a, %bb14.i.lr.ph ], [ %_29.i.i.i.i.i65, %bb5 ]
  %_26.i.i.i.i.i = phi i64 [ 0, %bb14.i.lr.ph ], [ %_26.i.i.i.i.i63, %bb5 ]
  %iter.sroa.0.055 = phi ptr [ %_25, %bb14.i.lr.ph ], [ %iter.sroa.0.1.ph, %bb5 ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 1
  %x.i = load i8, ptr %iter.sroa.0.055, align 1, !noalias !1221, !noundef !19
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_32
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1221, !noundef !19
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %12 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb24

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb24

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_32
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1221, !noundef !19
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %13 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb24

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_32
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.055, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1221, !noundef !19
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %14 = or disjoint i32 %_27.i, %_25.i
  br label %bb24

cleanup1:                                         ; preds = %bb8.i.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<std::collections::hash::set::HashSet<char>>
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$std..collections..hash..set..HashSet$LT$char$GT$$GT$17ha9c0ec42ee0b1b82E"(ptr noalias noundef align 8 dereferenceable(48) %set) #23
  br label %bb19

bb24:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %12, %bb4.i ], [ %13, %bb6.i ], [ %14, %bb8.i ], [ %_7.i, %bb3.i ]
  %16 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %_11.i = load i64, ptr %9, align 8, !alias.scope !1224, !noalias !1227, !noundef !19
  %_3.i = icmp eq i64 %_11.i, 0
  %key0.i.i.i14.pre = load i64, ptr %_20.sroa.4.0.set.sroa_idx, align 8, !alias.scope !1229, !noalias !1236
  %key1.i.i.i15.pre = load i64, ptr %_20.sroa.5.0.set.sroa_idx, align 8, !alias.scope !1229, !noalias !1236
  %.pre = xor i64 %key0.i.i.i14.pre, 8317987319222330741
  %.pre75 = xor i64 %key1.i.i.i15.pre, 7237128888997146477
  %.pre77 = xor i64 %key0.i.i.i14.pre, 7816392313619706465
  %.pre79 = zext nneg i32 %_0.sroa.4.0.i.ph to i64
  %.pre80 = or disjoint i64 %.pre79, 288230376151711744
  %.pre81 = xor i64 %key1.i.i.i15.pre, %.pre79
  %.pre83 = xor i64 %.pre81, 8098989879002948979
  %.pre85 = add i64 %.pre75, %.pre
  %.pre86 = add i64 %.pre83, %.pre77
  %.pre87 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre75, i64 %.pre75, i64 13)
  %.pre89 = xor i64 %.pre87, %.pre85
  %.pre91 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre83, i64 %.pre83, i64 16)
  %.pre93 = xor i64 %.pre91, %.pre86
  %.pre95 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre85, i64 %.pre85, i64 32)
  %.pre97 = add i64 %.pre89, %.pre86
  %.pre98 = add i64 %.pre93, %.pre95
  %.pre99 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre89, i64 %.pre89, i64 17)
  %.pre101 = xor i64 %.pre97, %.pre99
  %.pre103 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre93, i64 %.pre93, i64 21)
  %.pre105 = xor i64 %.pre103, %.pre98
  %.pre107 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre97, i64 %.pre97, i64 32)
  %.pre109 = xor i64 %.pre98, %.pre80
  %.pre111 = xor i64 %.pre107, 255
  %.pre113 = add i64 %.pre109, %.pre101
  %.pre114 = add i64 %.pre111, %.pre105
  %.pre115 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre101, i64 %.pre101, i64 13)
  %.pre117 = xor i64 %.pre113, %.pre115
  %.pre119 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre105, i64 %.pre105, i64 16)
  %.pre121 = xor i64 %.pre114, %.pre119
  %.pre123 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre113, i64 %.pre113, i64 32)
  %.pre125 = add i64 %.pre117, %.pre114
  %.pre126 = add i64 %.pre121, %.pre123
  %.pre127 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre117, i64 %.pre117, i64 17)
  %.pre129 = xor i64 %.pre125, %.pre127
  %.pre131 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre121, i64 %.pre121, i64 21)
  %.pre133 = xor i64 %.pre131, %.pre126
  %.pre135 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre125, i64 %.pre125, i64 32)
  %.pre137 = add i64 %.pre129, %.pre126
  %.pre138 = add i64 %.pre133, %.pre135
  %.pre139 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre129, i64 %.pre129, i64 13)
  %.pre141 = xor i64 %.pre139, %.pre137
  %.pre143 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre133, i64 %.pre133, i64 16)
  %.pre145 = xor i64 %.pre143, %.pre138
  %.pre147 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre137, i64 %.pre137, i64 32)
  %.pre149 = add i64 %.pre141, %.pre138
  %.pre150 = add i64 %.pre145, %.pre147
  %.pre151 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre141, i64 %.pre141, i64 17)
  %.pre153 = xor i64 %.pre151, %.pre149
  %.pre155 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre145, i64 %.pre145, i64 21)
  %.pre157 = xor i64 %.pre155, %.pre150
  %.pre159 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre149, i64 %.pre149, i64 32)
  %.pre161 = add i64 %.pre153, %.pre150
  %.pre162 = add i64 %.pre157, %.pre159
  %.pre163 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre153, i64 %.pre153, i64 13)
  %.pre165 = xor i64 %.pre163, %.pre161
  %.pre167 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre157, i64 %.pre157, i64 16)
  %.pre169 = xor i64 %.pre167, %.pre162
  %.pre171 = add i64 %.pre165, %.pre162
  %.pre172 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre165, i64 %.pre165, i64 17)
  %.pre174 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre169, i64 %.pre169, i64 21)
  %.pre176 = tail call noundef i64 @llvm.fshl.i64(i64 %.pre171, i64 %.pre171, i64 32)
  %.pre178 = xor i64 %.pre172, %.pre174
  %.pre180 = xor i64 %.pre178, %.pre176
  %.pre182 = xor i64 %.pre180, %.pre171
  br i1 %_3.i, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb24
  %_21.i.i.i = lshr i64 %.pre182, 57
  %tag_hash.i.i.i = trunc nuw nsw i64 %_21.i.i.i to i8
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i = getelementptr i8, ptr %_29.i.i.i.i.i, i64 -4
  br label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb20.i.i.i, %bb2.i
  %probe_seq.sroa.9.0.i.i.i = phi i64 [ 0, %bb2.i ], [ %23, %bb20.i.i.i ]
  %hash.pn.i.i = phi i64 [ %.pre182, %bb2.i ], [ %24, %bb20.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i = and i64 %hash.pn.i.i, %_26.i.i.i.i.i
  %_27.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i = load <16 x i8>, ptr %_27.i.i.i, align 1, !noalias !1239
  %17 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, %.sroa.0.15.vec.insert.i.i.i
  %18 = bitcast <16 x i1> %17 to i16
  %.not.i.not23.i.i = icmp eq i16 %18, 0
  br i1 %.not.i.not23.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb1.i.i.i, %bb17.i.i.i
  %iter.sroa.0.0.i24.i.i = phi i16 [ %_51.i.i.i, %bb17.i.i.i ], [ %18, %bb1.i.i.i ]
  %19 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i, i1 true)
  %_42.i.i.i = zext nneg i16 %19 to i64
  %_13.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i, %_42.i.i.i
  %index5.i.i.i = and i64 %_13.i.i.i, %_26.i.i.i.i.i
  %_18.i.i.i = sub nsw i64 0, %index5.i.i.i
  %gep.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i
  %_4.i.i.i.i.i.i = load i32, ptr %gep.i.i, align 4, !range !1094, !alias.scope !1247, !noalias !1254, !noundef !19
  %_0.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i, label %bb3, label %bb17.i.i.i, !prof !1175

bb11.i.i.i:                                       ; preds = %bb17.i.i.i, %bb1.i.i.i
  %20 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i, splat (i8 -1)
  %21 = bitcast <16 x i1> %20 to i16
  %b8.not.i.i.i = icmp eq i16 %21, 0
  br i1 %b8.not.i.i.i, label %bb20.i.i.i, label %bb4, !prof !925

bb17.i.i.i:                                       ; preds = %bb10.i.i.i
  %22 = add i16 %iter.sroa.0.0.i24.i.i, -1
  %_51.i.i.i = and i16 %22, %iter.sroa.0.0.i24.i.i
  %.not.i.not.i.i = icmp eq i16 %_51.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb11.i.i.i, label %bb10.i.i.i

bb20.i.i.i:                                       ; preds = %bb11.i.i.i
  %23 = add i64 %probe_seq.sroa.9.0.i.i.i, 16
  %24 = add i64 %probe_seq.sroa.0.0.i.i.i, %23
  br label %bb1.i.i.i

bb23:                                             ; preds = %bb5
  %_47.pre = load i64, ptr %9, align 8
  %_6.i.i.i.i.i.i.pre = load i64, ptr %10, align 8, !alias.scope !1260
  %_42 = icmp sgt i64 %_24, -1
  tail call void @llvm.assume(i1 %_42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %_4.i.i.i.i.i.i7 = icmp eq i64 %_6.i.i.i.i.i.i.pre, 0
  br i1 %_4.i.i.i.i.i.i7, label %bb16, label %bb1.i.i.i.i.i.i

bb1.i.i.i.i.i.i:                                  ; preds = %bb23
  %_10.i.i.i.i.i.i = shl i64 %_6.i.i.i.i.i.i.pre, 2
  %_32.0.i.i.i.i.i.i.i = add i64 %_10.i.i.i.i.i.i, 19
  %ctrl_offset.i.i.i.i.i.i.i = and i64 %_32.0.i.i.i.i.i.i.i, -16
  %rhs5.i.i.i.i.i.i.i = add i64 %_6.i.i.i.i.i.i.pre, 17
  %_37.0.i.i.i.i.i.i.i = add i64 %rhs5.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_37.1.i.i.i.i.i.i.i = icmp uge i64 %_37.0.i.i.i.i.i.i.i, %ctrl_offset.i.i.i.i.i.i.i
  %_19.i.i.i.i.i.i.i = icmp ult i64 %_37.0.i.i.i.i.i.i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %_37.1.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %_19.i.i.i.i.i.i.i)
  %_4.not.i.i.i.i.i.i.i = icmp eq i64 %_37.0.i.i.i.i.i.i.i, 0
  br i1 %_4.not.i.i.i.i.i.i.i, label %bb16, label %bb1.i2.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i:                               ; preds = %bb1.i.i.i.i.i.i
  %self1.i.i.i.i.i.i = load ptr, ptr %set, align 8, !alias.scope !1260, !nonnull !19, !noundef !19
  %_18.i.i.i.i.i.i = sub nsw i64 0, %ctrl_offset.i.i.i.i.i.i.i
  %ptr.i.i.i.i.i.i = getelementptr inbounds i8, ptr %self1.i.i.i.i.i.i, i64 %_18.i.i.i.i.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %ptr.i.i.i.i.i.i, i64 noundef %_37.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #19, !noalias !1260
  br label %bb16

bb16:                                             ; preds = %bb21, %bb1.i2.i.i.i.i.i.i, %bb1.i.i.i.i.i.i, %bb23
  %_47187 = phi i64 [ %_47.pre, %bb1.i2.i.i.i.i.i.i ], [ %_47.pre, %bb1.i.i.i.i.i.i ], [ %_47.pre, %bb23 ], [ 0, %bb21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %set)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %self1.i.i.i.i1.i.i8 = load i64, ptr %str, align 8, !range !1214, !alias.scope !1294, !noalias !1297, !noundef !19
  %_6.i.i.i.i2.i.i9 = icmp eq i64 %self1.i.i.i.i1.i.i8, 0
  br i1 %_6.i.i.i.i2.i.i9, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12", label %bb2.i.i.i3.i.i10

bb2.i.i.i3.i.i10:                                 ; preds = %bb16
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_25, i64 noundef %self1.i.i.i.i1.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1299
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfad571b22e59a72dE.exit12": ; preds = %bb16, %bb2.i.i.i3.i.i10
  %_12 = and i64 %_24, 1
  %_11 = icmp eq i64 %_12, 0
  %_14 = icmp eq i64 %_47187, 0
  %or.cond = select i1 %_11, i1 %_14, i1 false
  %_15 = icmp ne i64 %_12, 0
  %_18 = icmp eq i64 %_47187, 1
  %or.cond2 = select i1 %_15, i1 %_18, i1 false
  %narrow = select i1 %or.cond, i1 true, i1 %or.cond2
  %_0.sroa.0.0 = zext i1 %narrow to i32
  ret i32 %_0.sroa.0.0

bb4:                                              ; preds = %bb11.i.i.i, %bb24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %_5.i.i.i = load i64, ptr %11, align 8, !alias.scope !1304, !noalias !1307, !noundef !19
  %b.i.i.i = icmp eq i64 %_5.i.i.i, 0
  br i1 %b.i.i.i, label %bb8.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i", !prof !925

bb8.i.i.i:                                        ; preds = %bb4
; invoke hashbrown::raw::RawTable<T,A>::reserve_rehash
  %25 = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5084f6aee36d1827E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %set, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %_20.sroa.4.0.set.sroa_idx, i1 noundef zeroext true)
          to label %.noexc42 unwind label %cleanup1

.noexc42:                                         ; preds = %bb8.i.i.i
  %_8.0.i.i.i = extractvalue { i64, i64 } %25, 0
  %26 = icmp eq i64 %_8.0.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %26)
  %_35.i.i.i.pre = load i64, ptr %10, align 8, !alias.scope !1311, !noalias !1314
  %_38.i.i.i.pre = load ptr, ptr %set, align 8, !alias.scope !1311, !noalias !1314
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i": ; preds = %.noexc42, %bb4
  %_38.i.i.i = phi ptr [ %_38.i.i.i.pre, %.noexc42 ], [ %_38.i.i.i69, %bb4 ]
  %_35.i.i.i = phi i64 [ %_35.i.i.i.pre, %.noexc42 ], [ %_35.i.i.i66, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %_30.i.i.i = lshr i64 %.pre182, 57
  %tag_hash.i.i.i34 = trunc nuw nsw i64 %_30.i.i.i to i8
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %tag_hash.i.i.i34, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %invariant.gep.i.i.i = getelementptr i8, ptr %_38.i.i.i, i64 -4
  br label %bb1.i.i.i35

bb1.i.i.i35:                                      ; preds = %bb9.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i"
  %hash.pn.i.i.i = phi i64 [ %.pre182, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %38, %bb9.i.i.i ]
  %insert_index.sroa.4.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %insert_index.sroa.4.137.i.i.i, %bb9.i.i.i ]
  %insert_index.sroa.0.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %insert_index.sroa.0.139.i.i.i, %bb9.i.i.i ]
  %27 = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h3b0d1f8cf6e2c407E.exit.i.i" ], [ %37, %bb9.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i36 = and i64 %hash.pn.i.i.i, %_35.i.i.i
  %_36.i.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i36
  %dst.sroa.0.0.copyload.i44.i.i.i = load <16 x i8>, ptr %_36.i.i.i, align 1, !noalias !1316
  %28 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %29 = bitcast <16 x i1> %28 to i16
  %.not46.i.i.i = icmp eq i16 %29, 0
  br i1 %.not46.i.i.i, label %bb16.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb1.i.i.i35, %bb19.i.i.i
  %iter.sroa.0.047.i.i.i = phi i16 [ %_60.i.i.i, %bb19.i.i.i ], [ %29, %bb1.i.i.i35 ]
  %30 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.047.i.i.i, i1 true)
  %_51.i.i.i37 = zext nneg i16 %30 to i64
  %_14.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i36, %_51.i.i.i37
  %index6.i.i.i = and i64 %_14.i.i.i, %_35.i.i.i
  %_18.i.i.i.i = sub nsw i64 0, %index6.i.i.i
  %gep.i.i.i = getelementptr i32, ptr %invariant.gep.i.i.i, i64 %_18.i.i.i.i
  %_4.i.i.i.i.i.i.i38 = load i32, ptr %gep.i.i.i, align 4, !range !1094, !alias.scope !1319, !noalias !1326, !noundef !19
  %_0.i.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i.i38
  br i1 %_0.i.i.i.i.i.i.i, label %bb5, label %bb19.i.i.i, !prof !1175

bb16.i.i.i:                                       ; preds = %bb19.i.i.i, %bb1.i.i.i35
  %_64.not.i.i.i = icmp eq i64 %insert_index.sroa.0.0.i.i.i, 1
  br i1 %_64.not.i.i.i, label %bb7.i.i.i, label %bb21.i.i.i, !prof !925

bb19.i.i.i:                                       ; preds = %bb15.i.i.i
  %31 = add i16 %iter.sroa.0.047.i.i.i, -1
  %_60.i.i.i = and i16 %31, %iter.sroa.0.047.i.i.i
  %.not.i.i.i = icmp eq i16 %_60.i.i.i, 0
  br i1 %.not.i.i.i, label %bb16.i.i.i, label %bb15.i.i.i

bb21.i.i.i:                                       ; preds = %bb16.i.i.i
  %32 = icmp slt <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, zeroinitializer
  %33 = bitcast <16 x i1> %32 to i16
  %.not.i.i.i.i = icmp eq i16 %33, 0
  br i1 %.not.i.i.i.i, label %bb9.i.i.i, label %bb6.thread41.i.i.i, !prof !925

bb6.thread41.i.i.i:                               ; preds = %bb21.i.i.i
  %34 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %33, i1 true)
  %_17.i.i.i.i = zext nneg i16 %34 to i64
  %_8.i.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i36, %_17.i.i.i.i
  %_7.i.i.i.i = and i64 %_8.i.i.i.i, %_35.i.i.i
  br label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb6.thread41.i.i.i, %bb16.i.i.i
  %insert_index.sroa.4.138.i.i.i = phi i64 [ %_7.i.i.i.i, %bb6.thread41.i.i.i ], [ %insert_index.sroa.4.0.i.i.i, %bb16.i.i.i ]
  %35 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i44.i.i.i, splat (i8 -1)
  %36 = bitcast <16 x i1> %35 to i16
  %b11.not.i.i.i = icmp eq i16 %36, 0
  br i1 %b11.not.i.i.i, label %bb9.i.i.i, label %bb27.i.i.i, !prof !925

bb9.i.i.i:                                        ; preds = %bb7.i.i.i, %bb21.i.i.i
  %insert_index.sroa.0.139.i.i.i = phi i64 [ 1, %bb7.i.i.i ], [ 0, %bb21.i.i.i ]
  %insert_index.sroa.4.137.i.i.i = phi i64 [ %insert_index.sroa.4.138.i.i.i, %bb7.i.i.i ], [ undef, %bb21.i.i.i ]
  %37 = add i64 %27, 16
  %38 = add i64 %37, %probe_seq.sroa.0.0.i.i.i36
  br label %bb1.i.i.i35

bb27.i.i.i:                                       ; preds = %bb7.i.i.i
  %_8.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %insert_index.sroa.4.138.i.i.i
  %_12.i20.i.i.i = load i8, ptr %_8.i19.i.i.i, align 1, !noalias !1332, !noundef !19
  %b.i.i.i2.i = icmp sgt i8 %_12.i20.i.i.i, -1
  br i1 %b.i.i.i2.i, label %bb2.i.i.i.i, label %bb2.i39, !prof !925

bb2.i.i.i.i:                                      ; preds = %bb27.i.i.i
  %39 = load <16 x i8>, ptr %_38.i.i.i, align 16, !noalias !1335
  %40 = icmp slt <16 x i8> %39, zeroinitializer
  %41 = bitcast <16 x i1> %40 to i16
  %42 = icmp ne i16 %41, 0
  tail call void @llvm.assume(i1 %42)
  %43 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %41, i1 true)
  %_25.i.i.i.i = zext nneg i16 %43 to i64
  %_9.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %_25.i.i.i.i
  %old_ctrl.i.pre.i = load i8, ptr %_9.i.phi.trans.insert.i, align 1, !noalias !1338
  br label %bb2.i39

bb2.i39:                                          ; preds = %bb2.i.i.i.i, %bb27.i.i.i
  %old_ctrl.i.i = phi i8 [ %_12.i20.i.i.i, %bb27.i.i.i ], [ %old_ctrl.i.pre.i, %bb2.i.i.i.i ]
  %_0.sroa.3.0.i.ph.i.i = phi i64 [ %insert_index.sroa.4.138.i.i.i, %bb27.i.i.i ], [ %_25.i.i.i.i, %bb2.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %_9.i.i = getelementptr inbounds nuw i8, ptr %_38.i.i.i, i64 %_0.sroa.3.0.i.ph.i.i
  %_14.i.i = and i8 %old_ctrl.i.i, 1
  %_12.i.i = zext nneg i8 %_14.i.i to i64
  %44 = load i64, ptr %11, align 8, !alias.scope !1338, !noundef !19
  %45 = sub i64 %44, %_12.i.i
  store i64 %45, ptr %11, align 8, !alias.scope !1338
  %_17.i.i = add i64 %_0.sroa.3.0.i.ph.i.i, -16
  %_16.i.i = and i64 %_17.i.i, %_35.i.i.i
  store i8 %tag_hash.i.i.i34, ptr %_9.i.i, align 1, !noalias !1338
  %46 = getelementptr i8, ptr %_38.i.i.i, i64 %_16.i.i
  %_24.i.i = getelementptr i8, ptr %46, i64 16
  store i8 %tag_hash.i.i.i34, ptr %_24.i.i, align 1, !noalias !1338
  %47 = load i64, ptr %9, align 8, !alias.scope !1338, !noundef !19
  %48 = add i64 %47, 1
  store i64 %48, ptr %9, align 8, !alias.scope !1338
  %_37.i.i = sub nsw i64 0, %_0.sroa.3.0.i.ph.i.i
  %49 = getelementptr inbounds i32, ptr %_38.i.i.i, i64 %_37.i.i
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  store i32 %_0.sroa.4.0.i.ph, ptr %50, align 4, !noalias !1338
  br label %bb5

bb3:                                              ; preds = %bb10.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  br label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %bb20.i.i.i.i.i, %bb3
  %probe_seq.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb3 ], [ %57, %bb20.i.i.i.i.i ]
  %hash.pn.i.i.i.i = phi i64 [ %.pre182, %bb3 ], [ %58, %bb20.i.i.i.i.i ]
  %probe_seq.sroa.0.0.i.i.i.i.i = and i64 %hash.pn.i.i.i.i, %_26.i.i.i.i.i
  %_27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %probe_seq.sroa.0.0.i.i.i.i.i
  %dst.sroa.0.0.copyload.i17.i.i.i.i = load <16 x i8>, ptr %_27.i.i.i.i.i, align 1, !noalias !1351
  %51 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i
  %52 = bitcast <16 x i1> %51 to i16
  %.not.i.not23.i.i.i.i = icmp eq i16 %52, 0
  br i1 %.not.i.not23.i.i.i.i, label %bb11.i.i.i.i.i, label %bb10.i.i.i.i.i

bb10.i.i.i.i.i:                                   ; preds = %bb1.i.i.i.i.i, %bb17.i.i.i.i.i
  %iter.sroa.0.0.i24.i.i.i.i = phi i16 [ %_51.i.i.i.i.i, %bb17.i.i.i.i.i ], [ %52, %bb1.i.i.i.i.i ]
  %53 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %iter.sroa.0.0.i24.i.i.i.i, i1 true)
  %_42.i.i.i.i.i = zext nneg i16 %53 to i64
  %_13.i.i.i.i.i = add i64 %probe_seq.sroa.0.0.i.i.i.i.i, %_42.i.i.i.i.i
  %index5.i.i.i.i.i = and i64 %_13.i.i.i.i.i, %_26.i.i.i.i.i
  %_18.i.i.i.i.i = sub nsw i64 0, %index5.i.i.i.i.i
  %gep.i.i.i.i = getelementptr i32, ptr %invariant.gep.i.i, i64 %_18.i.i.i.i.i
  %_4.i.i.i.i.i.i.i.i = load i32, ptr %gep.i.i.i.i, align 4, !range !1094, !alias.scope !1362, !noalias !1369, !noundef !19
  %_0.i.i.i.i.i.i.i.i = icmp eq i32 %_0.sroa.4.0.i.ph, %_4.i.i.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i.i.i.i, label %bb4.i.i.i, label %bb17.i.i.i.i.i, !prof !1175

bb11.i.i.i.i.i:                                   ; preds = %bb17.i.i.i.i.i, %bb1.i.i.i.i.i
  %54 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i17.i.i.i.i, splat (i8 -1)
  %55 = bitcast <16 x i1> %54 to i16
  %b8.not.i.i.i.i.i = icmp eq i16 %55, 0
  br i1 %b8.not.i.i.i.i.i, label %bb20.i.i.i.i.i, label %bb5, !prof !925

bb17.i.i.i.i.i:                                   ; preds = %bb10.i.i.i.i.i
  %56 = add i16 %iter.sroa.0.0.i24.i.i.i.i, -1
  %_51.i.i.i.i.i = and i16 %56, %iter.sroa.0.0.i24.i.i.i.i
  %.not.i.not.i.i.i.i = icmp eq i16 %_51.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb11.i.i.i.i.i, label %bb10.i.i.i.i.i

bb20.i.i.i.i.i:                                   ; preds = %bb11.i.i.i.i.i
  %57 = add i64 %probe_seq.sroa.9.0.i.i.i.i.i, 16
  %58 = add i64 %probe_seq.sroa.0.0.i.i.i.i.i, %57
  br label %bb1.i.i.i.i.i

bb4.i.i.i:                                        ; preds = %bb10.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %_6.i.i.i.i.i.i44 = add nsw i64 %index5.i.i.i.i.i, -16
  %index_before.i.i.i.i.i.i = and i64 %_6.i.i.i.i.i.i44, %_26.i.i.i.i.i
  %_15.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %index_before.i.i.i.i.i.i
  %dst.sroa.0.0.copyload.i23.i.i.i.i.i.i = load <16 x i8>, ptr %_15.i.i.i.i.i.i, align 1, !noalias !1384
  %59 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i23.i.i.i.i.i.i, splat (i8 -1)
  %60 = bitcast <16 x i1> %59 to i16
  %_24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_29.i.i.i.i.i, i64 %index5.i.i.i.i.i
  %dst.sroa.0.0.copyload.i624.i.i.i.i.i.i = load <16 x i8>, ptr %_24.i.i.i.i.i.i, align 1, !noalias !1388
  %61 = icmp eq <16 x i8> %dst.sroa.0.0.copyload.i624.i.i.i.i.i.i, splat (i8 -1)
  %62 = bitcast <16 x i1> %61 to i16
  %63 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %60, i1 false)
  %64 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %62, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %64, %63
  %_11.i.i.i.i.i.i = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %_11.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i", label %bb2.i.i.i.i.i.i

bb2.i.i.i.i.i.i:                                  ; preds = %bb4.i.i.i
  %65 = load i64, ptr %11, align 8, !alias.scope !1391, !noalias !1392, !noundef !19
  %66 = add i64 %65, 1
  store i64 %66, ptr %11, align 8, !alias.scope !1391, !noalias !1392
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i": ; preds = %bb2.i.i.i.i.i.i, %bb4.i.i.i
  %ctrl.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb2.i.i.i.i.i.i ], [ -128, %bb4.i.i.i ]
  store i8 %ctrl.sroa.0.0.i.i.i.i.i.i, ptr %_24.i.i.i.i.i.i, align 1, !noalias !1393
  %_46.i.i.i.i.i.i = getelementptr i8, ptr %_15.i.i.i.i.i.i, i64 16
  store i8 %ctrl.sroa.0.0.i.i.i.i.i.i, ptr %_46.i.i.i.i.i.i, align 1, !noalias !1393
  %67 = add i64 %_11.i, -1
  store i64 %67, ptr %9, align 8, !alias.scope !1391, !noalias !1392
  br label %bb5

bb5:                                              ; preds = %bb11.i.i.i.i.i, %bb15.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i", %bb2.i39
  %_38.i.i.i70 = phi ptr [ %_38.i.i.i69, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_38.i.i.i, %bb2.i39 ], [ %_38.i.i.i, %bb15.i.i.i ], [ %_38.i.i.i69, %bb11.i.i.i.i.i ]
  %_35.i.i.i67 = phi i64 [ %_35.i.i.i66, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_35.i.i.i, %bb2.i39 ], [ %_35.i.i.i, %bb15.i.i.i ], [ %_35.i.i.i66, %bb11.i.i.i.i.i ]
  %_29.i.i.i.i.i65 = phi ptr [ %_29.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_38.i.i.i, %bb2.i39 ], [ %_38.i.i.i, %bb15.i.i.i ], [ %_29.i.i.i.i.i, %bb11.i.i.i.i.i ]
  %_26.i.i.i.i.i63 = phi i64 [ %_26.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h8d367b2999601316E.exit.i.i.i" ], [ %_35.i.i.i, %bb2.i39 ], [ %_35.i.i.i, %bb15.i.i.i ], [ %_26.i.i.i.i.i, %bb11.i.i.i.i.i ]
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_32
  br i1 %_7.i.i, label %bb23, label %bb14.i

bb20:                                             ; preds = %bb2.i.i.i3.i.i, %bb19
  resume { ptr, i32 } %.pn
}
