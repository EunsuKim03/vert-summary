; ModuleID = 'benchmark/cpp_transcoder/COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME/COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME/COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = add nsw i32 %1, 1
  %7 = mul nsw i32 %6, %1
  %8 = sdiv i32 %7, 2
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9)
  store i32 0, i32* %3, align 4, !tbaa !5
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10)
  store i32 0, i32* %4, align 4, !tbaa !5
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11)
  store i32 0, i32* %5, align 4, !tbaa !5
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = zext i32 %1 to i64
  br label %17

15:                                               ; preds = %43, %2
  %16 = phi i32 [ %8, %2 ], [ %53, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9)
  ret i32 %16

17:                                               ; preds = %13, %43
  %18 = phi i32 [ 0, %13 ], [ %45, %43 ]
  %19 = phi i32 [ 0, %13 ], [ %46, %43 ]
  %20 = phi i32 [ 0, %13 ], [ %47, %43 ]
  %21 = phi i32 [ 0, %13 ], [ %48, %43 ]
  %22 = phi i32 [ 0, %13 ], [ %49, %43 ]
  %23 = phi i32 [ 0, %13 ], [ %50, %43 ]
  %24 = phi i64 [ 0, %13 ], [ %44, %43 ]
  %25 = phi i32 [ %8, %13 ], [ %53, %43 ]
  %26 = getelementptr inbounds i8, i8* %0, i64 %24
  %27 = load i8, i8* %26, align 1, !tbaa !9
  switch i8 %27, label %38 [
    i8 97, label %28
    i8 98, label %33
  ]

28:                                               ; preds = %17
  %29 = add nuw nsw i64 %24, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4, !tbaa !5
  %31 = icmp slt i32 %21, %20
  %32 = select i1 %31, i32* %5, i32* %4
  br label %43

33:                                               ; preds = %17
  %34 = add nuw nsw i64 %24, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4, !tbaa !5
  %36 = icmp slt i32 %23, %22
  %37 = select i1 %36, i32* %5, i32* %3
  br label %43

38:                                               ; preds = %17
  %39 = add nuw nsw i64 %24, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4, !tbaa !5
  %41 = icmp slt i32 %19, %18
  %42 = select i1 %41, i32* %4, i32* %3
  br label %43

43:                                               ; preds = %28, %38, %33
  %44 = phi i64 [ %29, %28 ], [ %39, %38 ], [ %34, %33 ]
  %45 = phi i32 [ %30, %28 ], [ %18, %38 ], [ %18, %33 ]
  %46 = phi i32 [ %19, %28 ], [ %19, %38 ], [ %35, %33 ]
  %47 = phi i32 [ %20, %28 ], [ %19, %38 ], [ %35, %33 ]
  %48 = phi i32 [ %21, %28 ], [ %40, %38 ], [ %21, %33 ]
  %49 = phi i32 [ %30, %28 ], [ %18, %38 ], [ %22, %33 ]
  %50 = phi i32 [ %21, %28 ], [ %40, %38 ], [ %23, %33 ]
  %51 = phi i32* [ %32, %28 ], [ %42, %38 ], [ %37, %33 ]
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = sub nsw i32 %25, %52
  %54 = icmp eq i64 %44, %14
  br i1 %54, label %15, label %17, !llvm.loop !10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_OF_SUB_STRINGS_THAT_DO_NOT_CONTAIN_ALL_THE_CHARACTERS_FROM_THE_SET_A_B_C_AT_THE_SAME_TIME_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
