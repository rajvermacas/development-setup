#!/usr/bin/env python3
"""
Generate a skill from research data.

This script takes structured research data and generates a complete skill package
with proper directory structure, SKILL.md, and reference documentation.
"""

import json
import os
import sys
from pathlib import Path
from typing import Dict, List


class SkillGenerator:
    """Generates a complete skill from research data."""

    def __init__(self, research_data: Dict, output_dir: str):
        """
        Initialize the skill generator.

        Args:
            research_data: Structured research data
            output_dir: Directory where skill will be created
        """
        self.research_data = research_data
        self.output_dir = Path(output_dir)
        self.skill_name = research_data.get("metadata", {}).get("name", "generated-skill")
        self.skill_dir = self.output_dir / self.skill_name

    def create_directory_structure(self) -> None:
        """Create the skill directory structure."""
        self.skill_dir.mkdir(parents=True, exist_ok=True)
        (self.skill_dir / "references").mkdir(exist_ok=True)
        print(f"Created skill directory: {self.skill_dir}")

    def generate_skill_md(self) -> str:
        """
        Generate the SKILL.md content.

        Returns:
            Complete SKILL.md content as string
        """
        metadata = self.research_data.get("metadata", {})
        topic = self.research_data.get("topic", "Unknown Topic")

        # YAML frontmatter
        frontmatter = f"""---
name: {metadata.get('name', 'generated-skill')}
description: {metadata.get('description', 'Generated skill from research')}
---
"""

        # Main body
        body = f"""
# {topic}

This skill provides comprehensive guidance for working with {topic}, based on the latest documentation and industry best practices.

## Overview

This skill contains:
- Latest library documentation and API references
- Industry best practices and patterns
- Code examples and implementation guidance
- Architectural patterns and design strategies

## Quick Start

For basic usage, see the quick reference below. For detailed information, refer to the comprehensive guides in the references directory.

### Core Concepts

See [core-concepts.md](references/core-concepts.md) for fundamental concepts and terminology.

### Common Patterns

See [patterns.md](references/patterns.md) for frequently used patterns and implementations.

### Best Practices

See [best-practices.md](references/best-practices.md) for production-ready guidelines and recommendations.

### API Reference

See [api-reference.md](references/api-reference.md) for detailed API documentation.

## When to Use This Skill

Use this skill when:
- Implementing features using {topic}
- Making architectural decisions involving {topic}
- Troubleshooting issues related to {topic}
- Optimizing performance with {topic}
- Following best practices for {topic}

## Getting Help

For specific topics:
- **Core concepts and fundamentals**: Read [core-concepts.md](references/core-concepts.md)
- **Implementation patterns**: Read [patterns.md](references/patterns.md)
- **Production guidelines**: Read [best-practices.md](references/best-practices.md)
- **API details**: Read [api-reference.md](references/api-reference.md)
"""

        return frontmatter + body

    def generate_reference_files(self) -> None:
        """Generate reference documentation files from research data."""
        references_dir = self.skill_dir / "references"

        # Core concepts
        core_concepts = self._format_core_concepts()
        with open(references_dir / "core-concepts.md", 'w') as f:
            f.write(core_concepts)

        # Patterns
        patterns = self._format_patterns()
        with open(references_dir / "patterns.md", 'w') as f:
            f.write(patterns)

        # Best practices
        best_practices = self._format_best_practices()
        with open(references_dir / "best-practices.md", 'w') as f:
            f.write(best_practices)

        # API reference
        api_reference = self._format_api_reference()
        with open(references_dir / "api-reference.md", 'w') as f:
            f.write(api_reference)

        print(f"Generated reference files in: {references_dir}")

    def _format_core_concepts(self) -> str:
        """Format core concepts documentation."""
        topic = self.research_data.get("topic", "")
        library_docs = self.research_data.get("library_docs", [])

        content = f"# Core Concepts - {topic}\n\n"
        content += "## Overview\n\n"
        content += f"This document covers fundamental concepts for {topic}.\n\n"

        if library_docs:
            content += "## Key Concepts\n\n"
            for doc in library_docs:
                content += f"### {doc.get('title', 'Concept')}\n\n"
                content += f"{doc.get('summary', '')}\n\n"
                if doc.get('url'):
                    content += f"Source: {doc['url']}\n\n"

        return content

    def _format_patterns(self) -> str:
        """Format patterns documentation."""
        topic = self.research_data.get("topic", "")
        code_examples = self.research_data.get("code_examples", [])
        architectural_patterns = self.research_data.get("architectural_patterns", [])

        content = f"# Common Patterns - {topic}\n\n"
        content += "## Implementation Patterns\n\n"

        if code_examples:
            content += "### Code Examples\n\n"
            for example in code_examples:
                content += f"#### {example.get('title', 'Example')}\n\n"
                content += f"{example.get('description', '')}\n\n"
                if example.get('code'):
                    content += f"```{example.get('language', 'python')}\n"
                    content += f"{example['code']}\n"
                    content += "```\n\n"

        if architectural_patterns:
            content += "## Architectural Patterns\n\n"
            for pattern in architectural_patterns:
                content += f"### {pattern.get('name', 'Pattern')}\n\n"
                content += f"{pattern.get('description', '')}\n\n"
                if pattern.get('use_cases'):
                    content += "**Use Cases:**\n"
                    for use_case in pattern['use_cases']:
                        content += f"- {use_case}\n"
                    content += "\n"

        return content

    def _format_best_practices(self) -> str:
        """Format best practices documentation."""
        topic = self.research_data.get("topic", "")
        best_practices = self.research_data.get("best_practices", [])

        content = f"# Best Practices - {topic}\n\n"
        content += "## Production Guidelines\n\n"
        content += f"Best practices for using {topic} in production environments.\n\n"

        if best_practices:
            for practice in best_practices:
                content += f"## {practice.get('category', 'General')}\n\n"
                content += f"{practice.get('description', '')}\n\n"
                if practice.get('guidelines'):
                    for guideline in practice['guidelines']:
                        content += f"- {guideline}\n"
                    content += "\n"

        return content

    def _format_api_reference(self) -> str:
        """Format API reference documentation."""
        topic = self.research_data.get("topic", "")
        library_docs = self.research_data.get("library_docs", [])

        content = f"# API Reference - {topic}\n\n"
        content += "## API Documentation\n\n"
        content += f"Comprehensive API reference for {topic}.\n\n"

        if library_docs:
            for doc in library_docs:
                if doc.get('api_section'):
                    content += f"## {doc.get('title', 'API')}\n\n"
                    content += f"{doc.get('content', '')}\n\n"

        return content

    def generate(self) -> str:
        """
        Generate the complete skill.

        Returns:
            Path to the generated skill directory
        """
        print(f"Generating skill: {self.skill_name}")

        self.create_directory_structure()

        # Generate SKILL.md
        skill_md = self.generate_skill_md()
        with open(self.skill_dir / "SKILL.md", 'w') as f:
            f.write(skill_md)
        print(f"Generated SKILL.md")

        # Generate reference files
        self.generate_reference_files()

        print(f"\n{'='*60}")
        print(f"Skill generated successfully!")
        print(f"Location: {self.skill_dir}")
        print(f"{'='*60}\n")

        return str(self.skill_dir)


def main():
    """Main entry point for skill generator."""
    if len(sys.argv) < 3:
        print("Usage: python generate_skill.py <research_data_json> <output_dir>")
        print("Example: python generate_skill.py /tmp/research.json .claude/skills")
        sys.exit(1)

    research_file = sys.argv[1]
    output_dir = sys.argv[2]

    # Load research data
    with open(research_file, 'r') as f:
        research_data = json.load(f)

    # Generate skill
    generator = SkillGenerator(research_data, output_dir)
    skill_path = generator.generate()

    print(f"Skill ready at: {skill_path}")
    return skill_path


if __name__ == "__main__":
    main()
