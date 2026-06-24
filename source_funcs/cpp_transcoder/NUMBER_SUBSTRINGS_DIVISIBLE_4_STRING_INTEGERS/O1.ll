; ModuleID = 'llvm/cpp_transcoder/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %13

7:                                                ; preds = %20, %1
  %8 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = add i64 %2, 4294967295
  %12 = and i64 %11, 4294967295
  br label %26

13:                                               ; preds = %5, %20
  %14 = phi i64 [ 0, %5 ], [ %22, %20 ]
  %15 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %16 = getelementptr inbounds i8, i8* %0, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !5
  switch i8 %17, label %20 [
    i8 52, label %18
    i8 56, label %18
    i8 48, label %18
  ]

18:                                               ; preds = %13, %13, %13
  %19 = add nsw i32 %15, 1
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi i32 [ %19, %18 ], [ %15, %13 ]
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %7, label %13, !llvm.loop !8

24:                                               ; preds = %26, %7
  %25 = phi i32 [ %8, %7 ], [ %42, %26 ]
  ret i32 %25

26:                                               ; preds = %10, %26
  %27 = phi i64 [ 0, %10 ], [ %33, %26 ]
  %28 = phi i32 [ %8, %10 ], [ %42, %26 ]
  %29 = getelementptr inbounds i8, i8* %0, i64 %27
  %30 = load i8, i8* %29, align 1, !tbaa !5
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, 10
  %33 = add nuw nsw i64 %27, 1
  %34 = getelementptr inbounds i8, i8* %0, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %32, %36
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  %40 = trunc i64 %33 to i32
  %41 = select i1 %39, i32 %40, i32 0
  %42 = add i32 %28, %41
  %43 = icmp eq i64 %33, %12
  br i1 %43, label %24, label %26, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
